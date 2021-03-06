module PortalGun
  class Firing
    require 'date'
    require 'mechanize'
    require 'active_support/all'

    def start(date=nil, gem_file_source=nil, ruby_versions=nil)
      date = eval(date) unless date.nil?
      gem_file_source ||= "Gemfile"
      puts "I don't know about this Rick...."
      date ||= (Date.today - 365)
      write_line(intro_block)

      write_line("#These are the most stable versions of the three latest minor ruby releases as of this point in time. Uncomment the one you wish to use.\n")
      ruby_versions.each do |rv|
        write_line "#ruby #{rv}"
      end
      write_line("\n")
      read_gem_file(gem_file_source).each do |line|
        if valid_gem_line(line)
          puts "Now processing: #{line}"
          write_line(find_latest_by_date(date, line))
        else
          write_line(line)
        end
      end
    end

    private

    def intro_block
      "#This Gemfile has been generated by PortalGun. If you have any issues please report to https://github.com/schwad/github"
    end

    def read_gem_file(input_file)
      lines = []
      File.open(input_file).each do |line|
        lines << line.gsub("\n", "").gsub("\"", "'")
      end
      lines
    end

    def track_whitespace(line)
      @whitespace_line = /(\s*).*/.match(line)[1]
    end

    def cleanup_gemline(gemline)
      gemline.scan(/\s*gem '(.*)[',|']/)[0][0].split(",")[0].gsub("'", "")
    end

    def valid_gem_line(line)
      if ((/\s*gem/ =~ line) == 0)
        track_whitespace(line)
        true
      else
        track_whitespace("")
        false
      end
    end

    def no_specification_valid_gem_line(line)
      (/,|~>|>=/ =~ line).nil? && /^gem/ =~ line
    end

    def find_latest_by_date(date, input)
      current_gem = cleanup_gemline(input)
      rubygem_page = Mechanize.new
      latest = nil
      rubygem_page = rubygem_page.get("https://rubygems.org/gems/#{current_gem}/versions")
      rubygem_page.search("li.gem__version-wrap").each do |possible_version|
        if inspect_date(possible_version.search("small.gem__version__date")[0].text, date)
          latest = possible_version.search("a.t-list__item")[0].text
          puts "PORTAL GUN FIRE! Version as of #{date} for #{current_gem} is #{latest}"
          break
        end
      end
      "gem \'#{current_gem}\', \'~> #{latest}\'"
    end

    def inspect_date(input, date)
      Date.parse(input[2..-1]) < date
    end

    def write_line(line)
      File.open("Portal_Gemfile", "a") do |file|
        file.write "#{@whitespace_line}#{line}\n"
      end
    end
    # start(Date.today - 150, "SampleGemfile")
  end
end

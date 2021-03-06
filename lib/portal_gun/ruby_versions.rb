module PortalGun
  RUBY_VERSIONS = [
  ['1995-12-21', '0.95'],
  ['1996-12-25', '1.0-961225'],
  ['1997-12-25', '1.0-971225'],
  ['1998-07-17', '1.1c0'],
  ['1998-07-24', '1.1c1'],
  ['1998-08-11', '1.1c2'],
  ['1998-08-27', '1.1c3'],
  ['1998-09-03', '1.1c4'],
  ['1998-09-08', '1.1c5'],
  ['1998-10-05', '1.1c6'],
  ['1998-11-09', '1.1c7'],
  ['1998-11-19', '1.1c8'],
  ['1998-11-26', '1.1c9'],
  ['1998-12-25', '1.2'],
  ['1999-01-11', '1.2.1'],
  ['1999-01-12', '1.2.1'],
  ['1999-01-21', '1.2.2'],
  ['1999-02-16', '1.2.3'],
  ['1999-04-09', '1.2.4'],
  ['1999-04-13', '1.2.5'],
  ['1999-06-21', '1.2.6'],
  ['1999-08-13', '1.4.0'],
  ['1999-09-16', '1.4.1'],
  ['1999-09-17', '1.4.2'],
  ['1999-12-07', '1.4.3'],
  ['2000-04-14', '1.4.4'],
  ['2000-06-23', '1.4.5'],
  ['2000-08-16', '1.4.6'],
  ['2000-09-19', '1.6.0'],
  ['2000-09-27', '1.6.1'],
  ['2000-12-25', '1.6.2'],
  ['2001-03-20', '1.6.3'],
  ['2001-06-04', '1.6.4'],
  ['2001-09-19', '1.6.5'],
  ['2001-12-26', '1.6.6'],
  ['2002-03-01', '1.6.7'],
  ['2002-12-24', '1.6.8'],
  ['2003-08-04', '1.8.0'],
  ['2003-12-25', '1.8.1'],
  ['2004-12-25', '1.8.2'],
  ['2005-09-21', '1.8.3'],
  ['2005-12-24', '1.8.4'],
  ['2006-08-25', '1.8.5'],
  ['2006-12-04', '1.8.5-p2'],
  ['2006-12-25', '1.8.5-p12'],
  ['2007-03-13', '1.8.5-p35'],
  ['2007-03-13', '1.8.6'],
  ['2007-06-09', '1.8.5-p52'],
  ['2007-06-09', '1.8.6-p36'],
  ['2007-09-23', '1.8.5-p113'],
  ['2007-09-23', '1.8.6-p110'],
  ['2007-10-04', '1.8.5-p114'],
  ['2007-10-04', '1.8.6-p111'],
  ['2007-12-26', '1.9.0-0'],
  ['2008-03-03', '1.8.5-p115'],
  ['2008-03-03', '1.8.6-p114'],
  ['2008-06-01', '1.8.7'],
  ['2008-06-09', '1.8.7-p17'],
  ['2008-06-20', '1.8.5-p231'],
  ['2008-06-20', '1.8.6-p230'],
  ['2008-06-20', '1.8.7-p22'],
  ['2008-08-08', '1.8.6-p286'],
  ['2008-08-08', '1.8.7-p71'],
  ['2008-08-11', '1.8.6-p287'],
  ['2008-08-11', '1.8.7-p72'],
  ['2009-01-31', '1.9.1-p0'],
  ['2009-03-31', '1.8.6-p368'],
  ['2009-04-09', '1.8.7-p160'],
  ['2009-05-12', '1.9.1-p129'],
  ['2009-06-10', '1.8.6-p369'],
  ['2009-06-10', '1.8.7-p173'],
  ['2009-06-16', '1.8.7-p174'],
  ['2009-07-19', '1.9.1-p243'],
  ['2009-08-04', '1.8.6-p383'],
  ['2009-12-07', '1.9.1-p376'],
  ['2009-12-25', '1.8.7-p248'],
  ['2010-01-10', '1.8.7-p249'],
  ['2010-01-10', '1.9.1-p378'],
  ['2010-01-11', '1.8.6-p388'],
  ['2010-02-04', '1.8.6-p398'],
  ['2010-02-05', '1.8.6-p399'],
  ['2010-06-23', '1.8.7-p299'],
  ['2010-06-24', '1.8.7-p299'],
  ['2010-07-02', '1.9.1-p429'],
  ['2010-08-16', '1.9.1-p430'],
  ['2010-08-16', '1.8.7-p301'],
  ['2010-08-19', '1.9.2-p0'],
  ['2010-09-24', '1.8.6-p420'],
  ['2010-12-24', '1.8.7-p330'],
  ['2010-12-25', '1.9.2-p136'],
  ['2011-02-18', '1.9.1-p431'],
  ['2011-02-18', '1.9.2-p180'],
  ['2011-02-18', '1.8.7-p334'],
  ['2011-07-02', '1.8.7-p352'],
  ['2011-07-15', '1.9.2-p290'],
  ['2011-10-30', '1.9.3-p0'],
  ['2011-12-28', '1.8.7-p357'],
  ['2012-02-17', '1.9.3-p125'],
  ['2012-02-18', '1.9.2-p318'],
  ['2012-04-20', '1.9.3-p194'],
  ['2012-04-22', '1.9.2-p320'],
  ['2012-06-29', '1.8.7-p370'],
  ['2012-10-12', '1.8.7-p371'],
  ['2012-10-12', '1.9.3-p286'],
  ['2012-11-10', '1.9.3-p327'],
  ['2012-12-25', '1.9.3-p362'],
  ['2013-01-17', '1.9.3-p374'],
  ['2013-02-06', '1.9.3-p385'],
  ['2013-02-22', '1.9.3-p392'],
  ['2013-02-24', '2.0.0-p0'],
  ['2013-05-14', '1.9.3-p426'],
  ['2013-05-14', '2.0.0-p195'],
  ['2013-05-15', '1.9.3-p429'],
  ['2013-06-27', '1.8.7-p374'],
  ['2013-06-27', '1.9.3-p448'],
  ['2013-06-27', '2.0.0-p247'],
  ['2013-11-22', '1.9.3-p484'],
  ['2013-11-22', '2.0.0-p353'],
  ['2013-12-26', '2.1.0'],
  ['2014-02-24', '1.9.3-p545'],
  ['2014-02-24', '2.0.0-p451'],
  ['2014-02-24', '2.1.1'],
  ['2014-03-09', '2.0.0-p481'],
  ['2014-03-09', '2.1.2'],
  ['2014-03-16', '1.9.3-p547'],
  ['2014-08-19', '1.9.2-p330'],
  ['2014-09-19', '2.0.0-p576'],
  ['2014-09-19', '2.1.3'],
  ['2014-10-27', '1.9.3-p550'],
  ['2014-10-27', '2.0.0-p594'],
  ['2014-10-27', '2.1.4'],
  ['2014-11-13', '1.9.3-p551'],
  ['2014-11-13', '2.0.0-p598'],
  ['2014-11-13', '2.1.5'],
  ['2014-12-25', '2.2.0'],
  ['2015-02-25', '2.0.0-p643'],
  ['2015-02-26', '2.2.1'],
  ['2015-04-13', '2.0.0-p645'],
  ['2015-04-13', '2.1.6'],
  ['2015-04-13', '2.2.2'],
  ['2015-08-18', '2.0.0-p647'],
  ['2015-08-18', '2.1.7'],
  ['2015-08-18', '2.2.3'],
  ['2015-12-16', '2.0.0-p648'],
  ['2015-12-16', '2.1.8'],
  ['2015-12-16', '2.2.4'],
  ['2016-04-26', '2.2.5'],
  ['2016-04-26', '2.3.1'],
  ['2016-11-15', '2.2.6'],
  ['2016-11-15', '2.3.2'],
  ['2016-11-21', '2.3.3'],
  ['2016-12-24', '2.4.0'],
  ['2017-03-22', '2.4.1'],
  ['2017-03-28', '2.2.7'],
  ['2017-03-30', '2.3.4']
  ]

  def self.latest?(supplied_date, inspected_date)
    inspected_date < supplied_date
  end

  def self.has_p?(input)
    input.include?('p')
  end

  def self.minor(input)
    input[0..2]
  end

  def self.minor_already_present?(minors, new)
   result = false
   minors.each do |el|
       if el.include?(new)
         result = true
       end
     end
   result
  end

  def self.correct_date?(supplied_date)
    begin
      if eval(supplied_date).to_date.is_a?(Date)
        true
      else
        false
      end
    rescue
      false
    end
  end

  def self.run_versions(supplied_date)
    unless correct_date?(supplied_date)
      puts "\n\n\nINVALID DATE FORMAT. Try '2.days.ago' or '2012-03-12'\n\n\n\n"
      exit
    end
    supplied_date = eval(supplied_date)
    minors = []
    versions = []

    PortalGun::RUBY_VERSIONS.reverse_each do |el|
      if latest?(supplied_date, Date.parse(el[0]))
        unless minor_already_present?(minors, minor(el[1]))
          minors << minor(el[1])
          versions << el[1]
        end
      end
      break if versions.length == 3
    end

    # puts "Here are the minor releases that were the most valid as of #{supplied_date}:"
    # versions.each_with_index do |version, index|
    #   puts "[#{index}]: #{version}"
    # end
    # result = 'invalid'
    # while result == 'invalid'
    #   puts 'Please enter which version you wish to use:'
    #   result = gets.chomp
    #   unless [0,1,2].include?(result.to_i)
    #     result = 'invalid'
    #   end
    # end
    # versions[result.to_i]
    versions
  end
end

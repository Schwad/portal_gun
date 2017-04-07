module PortalGun
  describe Firing do

    def wipe_fake_gemfile
      File.delete("Portal_Gemfile")
    end

    describe '#write_line' do
     it "writes to new gemfile" do
      #  PortalGun::Firing.new.write_line("TestOneTwoThree")
      #  expect(File.open('Portal_Gemfile', &:readline)).to eq("TestOneTwoThree\n")
      #  wipe_fake_gemfile
     end

     describe '#read_gem_file' do
       it "reads in a gemfile" do
        #  reader = PortalGun::Firing.new.read_gem_file("SampleGemfile")
       end
     end

     describe '#cleanup_gemline' do
     end

     describe '#valid_gemline' do
     end

     describe '#no_specification_valid_gem_line' do
     end

     describe '#find_latest_by_date' do
     end
   end
  end
end

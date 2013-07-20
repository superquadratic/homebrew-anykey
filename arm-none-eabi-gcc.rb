require 'formula'

class ArmNoneEabiGcc < Formula
  homepage 'https://launchpad.net/gcc-arm-embdded'
  version '20130614'
  url 'https://launchpadlibrarian.net/143625835/gcc-arm-none-eabi-4_7-2013q2-20130614-mac.tar.bz2'
  sha1 'a2647aa321a70d848b2cfedc5b18b48e6619b394'

  bottle do
    sha1 'a2647aa321a70d848b2cfedc5b18b48e6619b394' => :mountain_lion
  end

  def install
    ohai 'Copying binaries'
    system 'cp', '-r', 'arm-none-eabi', 'bin', 'lib', 'share', "#{prefix}/"
  end
end

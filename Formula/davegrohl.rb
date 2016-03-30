class Davegrohl < Formula
  desc "Password Cracker for OS X"
  homepage "https://github.com/octomagon/davegrohl"
  url "https://github.com/octomagon/davegrohl/archive/v3.0.0-alpha.tar.gz"
  version "3.0.0-alpha"
  sha256 "f9fcc1f6c0f92ddf460b38d94a3f7dcd8b93a6259e82813d5e129942ad0a8723"

  def install
    system "make"
    bin.install "dave"
    man1.install "docs/dave.1"
  end

  test do
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

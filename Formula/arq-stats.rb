class ArqStats < Formula
  desc "Report most changed files from Arq backup logs"
  homepage "https://github.com/straxhaber/arq-stats"
  url "https://github.com/straxhaber/arq-stats.git", branch: "main", using: :git
  version "0.1.0"

  def install
    bin.install "arq_stats.py" => "arq-stats"
  end

  test do
    assert_match "Top uploaded files from Arq backup logs.", shell_output("#{bin}/arq-stats --help")
  end
end

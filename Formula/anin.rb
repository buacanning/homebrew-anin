class Anin < Formula
  desc "Simple Vim for the Terminal on Steroids"
  homepage "https://github.com/buacanning/anin"
  url "https://github.com/buacanning/anin/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"  # Update this after uploading release
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--prefix", prefix
  end

  def postinstall
    system bin/"anin", "install"
  end

  def caveats
    <<~EOS
      Anin shell integration installed automatically!
      Restart your terminal or run: source ~/.zshrc
    EOS
  end
end

class Anin < Formula
  desc "Simple Vim for the Terminal on Steroids"
  homepage "https://github.com/buacanning/anin"
  url "https://github.com/buacanning/anin/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "fb8d17e7b7ef9c76223b342ae875d7b36b0d6f10cc019d8be8de8d0cc1c0f1bb"  # Update this after uploading release
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

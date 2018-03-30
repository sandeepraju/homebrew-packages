
class Serve < Formula
  desc "A simple HTTP server for serving static files."
  homepage "https://github.com/sandeepraju/serve"
  url "https://github.com/sandeepraju/serve/files/1864893/serve-macos_x64.zip"
  version "0.0.2"
  sha256 "a0ffb4b3b4938b745f5312fa685c28b4d08932fa8df4f3c1a48455e639f1ae5f"
  
  def install
    bin.install "serve"
  end
end
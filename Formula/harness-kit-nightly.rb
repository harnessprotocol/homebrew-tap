class HarnessKitNightly < Formula
  desc "Compile and validate harness.yaml for AI coding tools (nightly)"
  homepage "https://github.com/harnessprotocol/harness-kit"
  url "https://github.com/harnessprotocol/harness-kit/releases/download/nightly/harness-kit-nightly-darwin-arm64.tar.gz"
  sha256 "5d0e38fcba475ee40d6c2c9cb76ffceb7cd3d333ebe411804a737881855a741e"
  license "Apache-2.0"
  version "20261120"

  depends_on arch: :arm64

  def install
    bin.install "harness-kit" => "harness-kit-nightly"
  end

  test do
    system bin/"harness-kit", "--version"
  end
end

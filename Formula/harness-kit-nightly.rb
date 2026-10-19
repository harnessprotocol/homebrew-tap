class HarnessKitNightly < Formula
  desc "Compile and validate harness.yaml for AI coding tools (nightly)"
  homepage "https://github.com/harnessprotocol/harness-kit"
  url "https://github.com/harnessprotocol/harness-kit/releases/download/nightly/harness-kit-nightly-darwin-arm64.tar.gz"
  sha256 "ed561ecad50f978c2109b46b5be727211ab3fc389f0d7b1ea32c6b44e92cdd63"
  license "Apache-2.0"
  version "20261019"

  depends_on arch: :arm64

  def install
    bin.install "harness-kit" => "harness-kit-nightly"
  end

  test do
    system bin/"harness-kit", "--version"
  end
end

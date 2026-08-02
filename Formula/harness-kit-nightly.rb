class HarnessKitNightly < Formula
  desc "Compile and validate harness.yaml for AI coding tools (nightly)"
  homepage "https://github.com/harnessprotocol/harness-kit"
  url "https://github.com/harnessprotocol/harness-kit/releases/download/nightly/harness-kit-nightly-darwin-arm64.tar.gz"
  sha256 "20e7832296f57db420239d3cb1f6e939fb8a0016bf26752059a4574aab900ef8"
  license "Apache-2.0"
  version "20260802"

  depends_on arch: :arm64

  def install
    bin.install "harness-kit" => "harness-kit-nightly"
  end

  test do
    system bin/"harness-kit", "--version"
  end
end

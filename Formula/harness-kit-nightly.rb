class HarnessKitNightly < Formula
  desc "Compile and validate harness.yaml for AI coding tools (nightly)"
  homepage "https://github.com/harnessprotocol/harness-kit"
  url "https://github.com/harnessprotocol/harness-kit/releases/download/nightly/harness-kit-nightly-darwin-arm64.tar.gz"
  sha256 "4a72e08da383cb6463062c0a5897998dae6f8e623fff2020707a4882339f5a06"
  version "20260602"

  depends_on arch: :arm64

  def install
    bin.install "harness-kit" => "harness-kit-nightly"
  end

  test do
    system bin/"harness-kit", "--version"
  end
end

class HarnessKitNightly < Formula
  desc "Compile and validate harness.yaml for AI coding tools (nightly)"
  homepage "https://github.com/harnessprotocol/harness-kit"
  url "https://github.com/harnessprotocol/harness-kit/releases/download/nightly/harness-kit-nightly-darwin-arm64.tar.gz"
  sha256 "78af49bc03182d0f940ec260b8276c110f85f6077cb5348a9520ac63acdd60f2"
  version "20260523"

  depends_on arch: :arm64

  def install
    bin.install "harness-kit" => "harness-kit-nightly"
  end

  test do
    system bin/"harness-kit", "--version"
  end
end

cask "harness-kit" do
  version "0.12.0"
  sha256 "9cd9b86b427682bd9a9e35c553653716737c9d0001b8adcea2cd7c712eb2368a"

  url "https://github.com/harnessprotocol/harness-kit/releases/download/v#{version}/HarnessKit-v#{version}-darwin-arm64.dmg"
  name "Harness Kit"
  desc "Desktop app for managing AI coding tool configurations"
  homepage "https://github.com/harnessprotocol/harness-kit"

  app "Harness Kit.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Harness Kit.app"]
  end

  caveats <<~EOS
    This app is not notarized. The quarantine flag is cleared automatically on install.
    If you still see a security warning, right-click the app and select Open.
  EOS

  zap trash: [
    "~/Library/Application Support/com.harnesskit.desktop",
    "~/Library/Caches/com.harnesskit.desktop",
  ]
end

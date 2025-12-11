cask "tudu" do
  version "1.0.0"
  sha256 "YOUR_SHA256_HASH_HERE"  # From step 2.3

  url "https://github.com/YOUR_USERNAME/tudu/releases/download/v#{version}/Tudu.zip"
  name "Tudu"
  desc "Beautiful todo app with widget support for macOS"
  homepage "https://github.com/YOUR_USERNAME/tudu"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tudu.app"

  zap trash: [
    "~/Library/Preferences/com.yourname.Tudu.plist",
    "~/Library/Application Support/Tudu",
    "~/Library/Caches/com.yourname.Tudu",
  ]
end

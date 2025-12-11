cask "tudu" do
  version "1.0.2"
  sha256 "c839f56c9ff401a5b84f2e5ea656f79701a43d6603447bf51f9293be42d730c4" # From step 2.3

  url "https://github.com/AslamSDM/tudu/releases/download/v#{version}/Tudu.zip"
  name "Tudu"
  desc "Beautiful todo app with widget support"
  homepage "https://github.com/AslamSDM/tudu"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tudu.app"

  zap trash: [
    "~/Library/Application Support/Tudu",
    "~/Library/Caches/com.yourname.Tudu",
    "~/Library/Preferences/com.yourname.Tudu.plist",
  ]
end

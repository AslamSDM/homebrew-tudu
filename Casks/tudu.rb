cask "tudu" do
  version "1.0.3"
  sha256 "19fa2d1b0c7ecc5ce84b2ebca76341abd5c7c392b17d6fcfecd0b1c3ebd0673b" # From step 2.3

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

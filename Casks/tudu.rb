cask "tudu" do
  version "1.0.4"
  sha256 "c0f743f306516cdeffa0e2ed5be9cdfd749ca96c6e45eddd36cb49d2fca3b832" # From step 2.3

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

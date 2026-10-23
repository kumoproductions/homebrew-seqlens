cask "seqlens" do
  version "26.14.0"
  sha256 "0c385c09bf851e8786e73057d280f4efc00424ff6b1a9b96a58920db2ee9da78"

  url "https://api.seqlens.app/v1/download/mac/#{version}"
  name "SeqLens"
  desc "Image sequence management tool for VFX and post-production workflows"
  homepage "https://seqlens.app/"

  livecheck do
    url "https://api.seqlens.app/v1/version"
    strategy :json do |json|
      json.dig("mac", "latest", "version")
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "SeqLens.app"

  zap trash: [
    "~/Library/Application Support/SeqLens",
    "~/Library/Caches/com.seqlens.app",
    "~/Library/Caches/com.seqlens.app.ShipIt",
    "~/Library/HTTPStorages/com.seqlens.app",
    "~/Library/Preferences/com.seqlens.app.plist",
    "~/Library/Saved Application State/com.seqlens.app.savedState",
  ]
end

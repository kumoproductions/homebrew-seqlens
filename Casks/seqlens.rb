cask "seqlens" do
  version "26.13.0"
  sha256 "19bd6bc9bbe1546970fceb5d965cf1b868a30abc6b42e2bd90f1d04e6bde78d7"

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
  depends_on macos: :monterey

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

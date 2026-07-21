cask "seqlens" do
  version "26.13.1"
  sha256 "23353308718730d1664a6c1acabb14f4ec83b5cafe25ea2efd7a2fc652f541c3"

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

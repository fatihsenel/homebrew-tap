cask "folderserve" do
  version "0.1.5"
  sha256 "2b920174c03ac42c12acc323fe69fb05768c8bcebdc3089244398f3a55e650d0"

  url "https://github.com/fatihsenel/FolderServe/releases/download/v#{version}/FolderServe-#{version}.zip"
  name "FolderServe"
  desc "Serves folders over HTTP on localhost with live reload and a request log"
  homepage "https://github.com/fatihsenel/FolderServe"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "FolderServe.app"

  zap trash: [
    "~/Library/Containers/com.fatihsenel.FolderServe",
    "~/Library/Saved Application State/com.fatihsenel.FolderServe.savedState",
  ]
end

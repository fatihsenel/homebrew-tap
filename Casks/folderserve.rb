cask "folderserve" do
  version "0.1.4"
  sha256 "1c330b1085b4f7fcb4d8005a4bbe2c72c50e3ef694b313666ed24f48d156337c"

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

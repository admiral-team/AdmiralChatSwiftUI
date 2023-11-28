DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" 

cd "$DIR"

swiftgen config run --config .swiftgenAdmiralChat.yml
swiftgen config run --config .swiftgenAdmiralChatImages.yml
swiftgen config run --config .swiftgenAdmiralUChatViewer.yml
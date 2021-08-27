source "$HOME/bin/__init__.sh"

alias chrome='google-chrome'
alias explorer='nautilus'
alias initJavaProject="mkdir src src/main src/main/java src/main/java/com src/main/resources src/main/resources/static src/main/resources/templates src/test src/test/java src/test/java/com"
alias format="prettier --write . --print-width 100"
alias codeins="code-insiders"
alias postman="/home/larryjason/Postman/Postman"
alias createMaven="mvn org.apache.maven.plugins:maven-archetype-plugin:3.1.2:generate -DarchetypeArtifactId="maven-archetype-quickstart" -DarchetypeGroupId="org.apache.maven.archetypes" -DarchetypeVersion="1.4""
alias scenebuilder="/opt/SceneBuilder/SceneBuilder"
alias reload="exec bash && . ~/.bash_profile"
alias imwheel="bash -c /home/larryjason/.script/mousewheel.sh"
alias python=python3

export JAVA_HOME=/usr/lib/jvm/zulu15
export custom_cli="/home/$USER/bin"
export PATH="/home/$USER/bin:$PATH" # custom bin
export PATH="/usr/local/go/bin:$PATH" # go bin
export GOPATH=/home/larryjason/go-workspace
export PATH=$GOPATH/bin:$PATH # bin inside go workspace

# eval "$(starship init bash)"

# system

source "$HOME/.cargo/env"

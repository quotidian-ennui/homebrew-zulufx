cask 'zulufx11' do
  version '11.0.8,11.41.23-ca-fx'
  sha256 '741a0ac71acb538c0628bbcb08d3995eadb1321f223b7d0a5241ced84da2178f'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.zip",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java 11 Standard Edition Development Kit with JavaFX'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  depends_on macos: '>= :yosemite'
  conflicts_with cask: 'zulu11'

  artifact "zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64/zulu-11.jdk", target: "/Library/Java/JavaVirtualMachines/zulufx11.jdk"

  postflight do
    system_command '/usr/libexec/java_home', args: ['--verbose'], print_stdout: true
  end
end

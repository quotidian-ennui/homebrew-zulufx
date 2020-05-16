cask 'zulufx8' do
  version '8.0.252,8.46.0.19-ca-fx'
  sha256 'feb8bcbaa2f0e382e88222c779c30534a45c2262dcf518797c4e992d62203797'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.zip",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java 8 Standard Edition Development Kit with JavaFX'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  depends_on macos: '>= :yosemite'
  conflicts_with cask: 'zulu8'

  artifact "zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64/zulu-8.jdk", target: "/Library/Java/JavaVirtualMachines/zulufx8.jdk"

  postflight do
    system_command '/usr/libexec/java_home', args: ['--version'], print_stdout: true
  end
end

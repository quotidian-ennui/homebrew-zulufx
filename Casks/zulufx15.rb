cask 'zulufx15' do
  version '15.0.2,15.29.15-ca-fx'
  sha256 'afb3d663e0e6c3e1b2292fb6d5a9920937a988aaa1999259975bce4302dd413c'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.tar.gz",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java 135 Standard Edition Development Kit with JavaFX'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  depends_on macos: '>= :yosemite'
  conflicts_with cask: 'zulu15'

  artifact "zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64/zulu-15.jdk", target: "/Library/Java/JavaVirtualMachines/zulufx15.jdk"

  postflight do
    system_command '/usr/libexec/java_home', args: ['--verbose'], print_stdout: true
  end
end

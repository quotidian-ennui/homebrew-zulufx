cask 'zulufx8' do
  version '8.0.262,8.48.0.51-ca-fx'
  sha256 '3b027f33e435e1e09dd9ed51c7c023ad43b0f4ae47281b6c5a69aed31ce8838e'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.zip",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java 8 Standard Edition Development Kit with JavaFX'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  depends_on macos: '>= :yosemite'
  conflicts_with cask: 'zulu8'

  artifact "zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64/zulu-8.jdk", target: "/Library/Java/JavaVirtualMachines/zulufx8.jdk"

  postflight do
    system_command '/usr/libexec/java_home', args: ['--verbose'], print_stdout: true
  end
end

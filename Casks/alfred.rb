cask :v1 => 'alfred' do
  version '2.7.1_387'
  sha256 'a3738d0513d736918a6d71535ef3d85dd184af267c05698e49ac4c6b48f38e17'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.zip"
  name 'Alfred'
  homepage 'http://www.alfredapp.com/'
  license :commercial

  app 'Alfred 2.app'
  app 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  postflight do
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
end

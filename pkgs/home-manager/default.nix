{ stdnev, fetchFromGithub }:

stdenv.mkDerivation rec {
  name = "home-manager";
  version = "1.0.0";
  src = fetchFromGithub {
    owner = "rycee";
    repo = "home-manager";
    rev = "v${version}";
    sha256 = "1ybl6h772qds8h5npx33m5rwscp2h0x2535fcix5kfcrbcm6zsr4"
  };

  postPatch = ''
    home-manager.users.my_username = { ... }
  '';
}

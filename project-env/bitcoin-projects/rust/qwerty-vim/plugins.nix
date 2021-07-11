{ pkgs, vimUtils, fetchFromGitHub }:
{
  vim-ripgrep = vimUtils.buildVimPluginFrom2Nix {
    name = "vim-ripgrep-2018-09-09";
    src = fetchFromGitHub {
      owner = "jremmen";
      repo = "vim-ripgrep";
      rev = "ec87af6b69387abb3c4449ce8c4040d2d00d745e";
      sha256 = "1by56rflr0bmnjvcvaa9r228zyrmxwfkzkclxvdfscm7l7n7jnmh";
    };
    dependencies = [];
  };

  hexmode = vimUtils.buildVimPluginFrom2Nix {
    name = "hexmode-2016-11-04";
    src = fetchFromGitHub {
      owner = "fidian";
      repo = "hexmode";
      rev = "27932330b9a36c91a6039267bc32a18060e82d57";
      sha256 = "00xdv6d3rmalv342ajqd7cgbci97frd7pmsrgfnaqcfimycka3la";
    };
    dependencies = [];
  };

  vim-rooter = vimUtils.buildVimPluginFrom2Nix {
    name = "vim-rooter-2018-09-28";
    src = fetchFromGitHub {
      owner = "airblade";
      repo = "vim-rooter";
      rev = "d5bb76e31c030e6b9197491ff521eca49332564b";
      sha256 = "1g1x7pkhalg354i41ch0wf2hmyjd33jsrc14lc8m732wxh65i0wa";
    };
    dependencies = [];
  };

  any-jump = vimUtils.buildVimPluginFrom2Nix {
    name = "any-jump-v0.5";
    src = fetchFromGitHub {
      owner = "pechorin";
      repo = "any-jump.vim";
      rev = "330b5352338f6c6db2a3484025334c42f80c98d9";
      sha256 = "12434nss4d60yffdd5d7f2h6mx7gxhw75mgk759anr061xs79s76";
    };
    dependencies = [];
  };

}

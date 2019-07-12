{ fetchurl }: let
  fetchNuGet = { name, version, sha256 }: fetchurl {
    inherit sha256;
    url = "https://www.nuget.org/api/v2/package/${name}/${version}";
  };
in [
  (fetchNuGet {
    name = "System.Xml.XmlSerializer";
    version = "4.3.0";
    sha256 = "07pa4sx196vxkgl3csvdmw94nydlsm9ir38xxcs84qjn8cycd912";
  })
  (fetchNuGet {
    name = "System.Memory";
    version = "4.5.0";
    sha256 = "1layqpcx1q4l805fdnj2dfqp6ncx2z42ca06rgsr6ikq4jjgbv30";
  })
  (fetchNuGet {
    name = "System.Threading.Tasks.Extensions";
    version = "4.0.0";
    sha256 = "1cb51z062mvc2i8blpzmpn9d9mm4y307xrwi65di8ri18cz5r1zr";
  })
  (fetchNuGet {
    name = "System.Globalization.Extensions";
    version = "4.0.1";
    sha256 = "0hjhdb5ri8z9l93bw04s7ynwrjrhx2n0p34sf33a9hl9phz69fyc";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Cng";
    version = "4.2.0";
    sha256 = "118jijz446kix20blxip0f0q8mhsh9bz118mwc2ch1p6g7facpzc";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Csp";
    version = "4.0.0";
    sha256 = "1cwv8lqj8r15q81d2pz2jwzzbaji0l28xfrpw29kdpsaypm92z2q";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.OpenSsl";
    version = "4.0.0";
    sha256 = "16sx3cig3d0ilvzl8xxgffmxbiqx87zdi8fc73i3i7zjih1a7f4q";
  })
  (fetchNuGet {
    name = "runtime.native.System.Net.Http";
    version = "4.0.1";
    sha256 = "1hgv2bmbaskx77v8glh7waxws973jn4ah35zysnkxmf0196sfxg6";
  })
  (fetchNuGet {
    name = "runtime.native.System.Security.Cryptography";
    version = "4.0.0";
    sha256 = "0k57aa2c3b10wl3hfqbgrl7xq7g8hh3a3ir44b31dn5p61iiw3z9";
  })
  (fetchNuGet {
    name = "System.Buffers";
    version = "4.0.0";
    sha256 = "13s659bcmg9nwb6z78971z1lr6bmh2wghxi1ayqyzl4jijd351gr";
  })
  (fetchNuGet {
    name = "runtime.native.System.IO.Compression";
    version = "4.1.0";
    sha256 = "0d720z4lzyfcabmmnvh0bnj76ll7djhji2hmfh3h44sdkjnlkknk";
  })
  (fetchNuGet {
    name = "runtime.native.System";
    version = "4.0.0";
    sha256 = "1ppk69xk59ggacj9n7g6fyxvzmk1g5p4fkijm0d7xqfkig98qrkf";
  })
  (fetchNuGet {
    name = "System.Private.DataContractSerialization";
    version = "4.3.0";
    sha256 = "06fjipqvjp559rrm825x6pll8gimdj9x1n3larigh5hsm584gndw";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Primitives";
    version = "2.1.0";
    sha256 = "1r9gzwdfmb8ysnc4nzmyz5cyar1lw0qmizsvrsh252nhlyg06nmb";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileProviders.Abstractions";
    version = "2.1.0";
    sha256 = "1sxls5f5cgb0wr8cwb05skqmz074683hrhmd3hhq6m5dasnzb8n3";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileSystemGlobbing";
    version = "2.1.0";
    sha256 = "1d2622qp22x1cnlwycnzjbc3sgi9jria26fk78zwzsa08npa3avv";
  })
  (fetchNuGet {
    name = "NBXplorer.Client";
    version = "2.0.0.17";
    sha256 = "0lm7spn7dic734knzpr2m54y9kirc6a9a6kkl5knvi1jk43800n2";
  })
  (fetchNuGet {
    name = "NBitcoin";
    version = "4.1.2.37";
    sha256 = "0vhd9xln60jdhay751g12cc9nc6dhzdki6cc5yq29b0rv2yxl3fs";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.App";
    version = "2.1.9";
    sha256 = "1h1a60xblxbpdll7kzvqcvdh6h3xym4x5b7qibsnkq4y7rsyghhv";
  })
  (fetchNuGet {
    name = "System.Runtime.Serialization.Primitives";
    version = "4.3.0";
    sha256 = "01vv2p8h4hsz217xxs0rixvb7f2xzbh6wv1gzbfykcbfrza6dvnf";
  })
  (fetchNuGet {
    name = "System.Collections.NonGeneric";
    version = "4.3.0";
    sha256 = "07q3k0hf3mrcjzwj8fwk6gv3n51cb513w4mgkfxzm3i37sc9kz7k";
  })
  (fetchNuGet {
    name = "NBitcoin.Altcoins";
    version = "1.0.2.6";
    sha256 = "0s7xblvypxjn8pig4ifdi8lpss30vcvcn5hcdf93a98galavkwl1";
  })
  (fetchNuGet {
    name = "Microsoft.DotNet.PlatformAbstractions";
    version = "2.0.3";
    sha256 = "020214swxm0hip1d9gjskrzmqzjnji7c6l5b3xcch8vp166066m9";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Hosting.Server.Abstractions";
    version = "2.0.3";
    sha256 = "0x46ji89q0m99xqw48d9kzc2mqfrws7mvvvy6vw0rl68x6s2nxyq";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Hosting.Abstractions";
    version = "2.0.3";
    sha256 = "10hcwj7xzq3a02g3zrpsl9a2hxyr4g2gnghpcbzajk48nhx844l0";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Abstractions";
    version = "2.0.2";
    sha256 = "1ycrrahdd0qzrv7aj0srg2anpll2ns98b0n9m83h12ch0mxcvpxq";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authorization";
    version = "2.0.4";
    sha256 = "1bxlpc1s22zwhhb30d1l2k4mazbiwlvi0rnzz7bmx4l5w96fyaxj";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Abstractions";
    version = "2.0.3";
    sha256 = "14p5wy08nqj307lgsq7bpjdcq15xxhlif8cmbhmy3f0p53lkds06";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Xml";
    version = "4.4.2";
    sha256 = "0srvc580facv2v1gpxsqd4fl6q1bfya7r8rwd4rcw6k9wg3i2dsx";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.DataProtection.Abstractions";
    version = "2.0.3";
    sha256 = "0fj78vzppmgkfgy1vv1ps6y4zqk48bygh34r082k4pyxsx7v0kjp";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Cryptography.Internal";
    version = "2.0.3";
    sha256 = "181lbi4v858crhjkk47h0afh24n0yf888lyfq0y4kdmrnhcknhgl";
  })
  (fetchNuGet {
    name = "Microsoft.Net.Http.Headers";
    version = "2.0.3";
    sha256 = "1d4rfjm8siv23pd9w6h3ikbnx8wnmh8jmpi6w36dkyhxjjh1y71z";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Localization.Abstractions";
    version = "2.0.3";
    sha256 = "01z9nib3705pbk01yklhic8qgbn0kqs52p7lfgjxw1xcr4gigl5c";
  })
  (fetchNuGet {
    name = "System.Security.AccessControl";
    version = "4.4.0";
    sha256 = "0ixqw47krkazsw0ycm22ivkv7dpg6cjz8z8g0ii44bsx4l8gcx17";
  })
  (fetchNuGet {
    name = "System.Security.Principal.Windows";
    version = "4.4.0";
    sha256 = "11rr16fp68apc0arsymgj18w8ajs9a4366wgx9iqwny4glrl20wp";
  })
  (fetchNuGet {
    name = "NicolasDorier.StandardConfiguration";
    version = "1.0.0.18";
    sha256 = "0lgssxafv6cqlw21fb79fm0fcln0clgsk6zadcwrnjv9vampfw7b";
  })
  (fetchNuGet {
    name = "System.Net.WebSockets.Client";
    version = "4.3.2";
    sha256 = "103y8lfsfa5xd1sqmq9sml4qyp4rij2i3fnnw119h119hb04l0rk";
  })
  (fetchNuGet {
    name = "System.Buffers";
    version = "4.5.0";
    sha256 = "1ywfqn4md6g3iilpxjn5dsr0f5lx6z0yvhqp4pgjcamygg73cz2c";
  })
  (fetchNuGet {
    name = "Newtonsoft.Json";
    version = "11.0.2";
    sha256 = "1784xi44f4k8v1fr696hsccmwpy94bz7kixxqlri98zhcxn406b2";
  })
  (fetchNuGet {
    name = "System.Net.Requests";
    version = "4.3.0";
    sha256 = "0pcznmwqqk0qzp0gf4g4xw7arhb0q8v9cbzh3v8h8qp6rjcr339a";
  })
  (fetchNuGet {
    name = "System.Net.Http";
    version = "4.3.3";
    sha256 = "02a8r520sc6zwrmls9n80j8f22lvx7p3nidjp4w7nh6my3d4lq77";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Abstractions";
    version = "1.0.2";
    sha256 = "08hxkx80rsq45r66nnf9r35yas6f7iyzki2sl7874nb0mmdmcz4c";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Razor.Extensions";
    version = "2.1.2";
    sha256 = "0rim87alixic1k60g30irxgaz8la3235iw10c3rmxp0w0sn7hc4s";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.CookiePolicy";
    version = "2.1.2";
    sha256 = "0cncxl26sdwnd627ylsm10afww5vc619a99ma8r2r092pml1k0mi";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication";
    version = "2.1.2";
    sha256 = "1wqd6h7sgs4vb9i23zvp7wpp58fyppd5m8zdr8akxm3g5z5znhzn";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.DependencyModel";
    version = "2.0.3";
    sha256 = "0dpyjp0hy9kkvk2dd4dclfmb10yq5avsw2a6v8nra9g6ii2p1nla";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.MicrosoftAccount";
    version = "2.1.2";
    sha256 = "0g409ply8p3a0hd0v1k5rlyyv3wc12xbvzl4dxhwzfk8abbr3iv9";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Facebook";
    version = "2.1.2";
    sha256 = "11b7bvjbs70di6dqaysln8j472dy7l9dxnrhikgyzgpdf9yaf7wi";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Hosting.Abstractions";
    version = "2.0.3";
    sha256 = "0da7mabab5b667n6sk74bj4nrg9i57y0fr4qnc1c225iab1bl8b0";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Configuration";
    version = "2.1.1";
    sha256 = "1qjri8c506928ld7mnyi1cdw08736yzqnlalghkbalhi82bcr3vq";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Cookies";
    version = "2.1.2";
    sha256 = "1vbdnmd2f50m4bgx9n2bhbcw1rbbr01jb3mig81xnsnflxv1dz4f";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http";
    version = "2.0.3";
    sha256 = "177nwyffn8lmjmn02c0k1p7xdd06q0pkv7hmq6dcg8jxr1mhary4";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc";
    version = "2.1.3";
    sha256 = "0qshkg1q2sdrigwk80f0adm5q82f305cjbm3zaqwiczfv4dkg4db";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Connections.Abstractions";
    version = "2.1.3";
    sha256 = "1pfpcg92lb7g7hi8w5vpqz01gyi0vvj0071sgkm6b97sqy10ss15";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Hosting.Abstractions";
    version = "2.1.1";
    sha256 = "1vgiby2slglmwg4kjxyn6cmb3xksps6i6c9z11za6s8d2czjl90l";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore";
    version = "2.1.1";
    sha256 = "1s535w90vdgrn1bfllgjyjf06gw1s0jl2c608wbxkjysraiwhadq";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Abstractions";
    version = "2.0.4";
    sha256 = "01rz0bfnq0wslmchppnmymlwca59zpmarcf5bhix5gvz53l7hb8q";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Abstractions";
    version = "2.1.1";
    sha256 = "1y90jx0xbmq9hwhvvyy6hbavvdffn0in71qfgq7gw2f92dg91j1r";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Diagnostics.Abstractions";
    version = "2.1.1";
    sha256 = "0mba7jcj4sfw5fbfwv00h1657m95l4f4zbrc0gkfcw2mv7kl6s8h";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authorization.Policy";
    version = "2.0.4";
    sha256 = "0396hgl1n1dmpfijcwbyz8nkb7sqid01mkmqrbwj1h721p5biq2n";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Server.Kestrel.Transport.Sockets";
    version = "2.1.3";
    sha256 = "1h0k08qf2fn59hjgizi1820r7kzai1xw7rq76s7hc7hi85pfb2hz";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Abstractions";
    version = "2.1.1";
    sha256 = "1sgpwj0sa0ac7m5fnkb482mnch8fsv8hfbvk53c6lyh47s1xhdjg";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Routing";
    version = "2.0.3";
    sha256 = "1rf8x4yvp5z74rgf8g4znhsw5mf263vwz3m3aq0dv6z3a3jmka3s";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Abstractions";
    version = "2.1.8";
    sha256 = "0indx7mk51hfqd4zcjddyj9pnlhn5fa3vald6imh8kyxvvjgai1n";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.EnvironmentVariables";
    version = "2.1.1";
    sha256 = "0b7f3fjdnfdm7qzqnbym344rbv8fh9qmngqnz5q1c2rapm9s6si8";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.KeyPerFile";
    version = "2.1.1";
    sha256 = "1vmqq6qg2afjzxl6pgwsg9qibkf6pkz2drhqbf0ywhqkmwkb69mb";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.HttpsPolicy";
    version = "2.1.1";
    sha256 = "1hmvs5zwfpwbhmvxa1jhkmmq6b34rfl0jl2v2p3vki6fa3azmj3c";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Core";
    version = "2.0.3";
    sha256 = "0zh9j9vabvghpib004dwv97cnl3pv7qnk5wz4436q9qjb3vpgry9";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Hosting.Abstractions";
    version = "2.1.1";
    sha256 = "1wnlcnaqfv3xpmhi5rpkn1r6bfrpv3pb8rvfz9dk5l87mllpi5mm";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.ApiExplorer";
    version = "2.1.3";
    sha256 = "1znlp15rzm8cwlbf4fv6f29m3w63dvjphkgacdrg1h9jjwszkyf9";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.HttpOverrides";
    version = "2.1.1";
    sha256 = "0gml9rb102cahpqg09dkim068w99qibq6bcf3z3ij2x4sv12hrss";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Abstractions";
    version = "2.0.2";
    sha256 = "0dkjf605yxszzn1rg1h252jqmsjvl48bk8d6nc4mj3x2vf5cl8ca";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Abstractions";
    version = "2.1.1";
    sha256 = "0b4bn0cf39c6jlc8xnpi1d8f3pz0qhf8ng440yb95y5jv5q4fdyw";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Formatters.Json";
    version = "2.1.3";
    sha256 = "0riyjvpq5hapzsgxc2xdzj1qq13vzjf8yk9zkn7d76cj04ra96rl";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Localization.Abstractions";
    version = "2.1.1";
    sha256 = "0d695l6lg67m5r7zdmi0r2yb1dfmab7lz0wh4axb0msc5arh877v";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.ResponseCaching.Abstractions";
    version = "2.0.3";
    sha256 = "14250md158nwj3d6j1fs4j639y098065j9nq535scf6pqpvvla4a";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Localization.Routing";
    version = "2.1.1";
    sha256 = "08nyl9j0szlinip1b8zv8lfn5lfy1gy2l6x4rw7di7iq5qgrvckm";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Localization";
    version = "2.1.3";
    sha256 = "1car7d4bjin5h9yvr3kr809sqxpqyzsgp9b6k9yl2w3dzccac8a9";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.DependencyInjection.Abstractions";
    version = "2.1.1";
    sha256 = "0rn0925aqm1fsbaf0n8jy6ng2fm1cy97lp7yikvx31m6178k9i84";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.DataProtection";
    version = "2.0.3";
    sha256 = "04p98sd10wlw5l650hmjbl44rz51n99r5xw7d717hyw7kjc4qzc9";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileSystemGlobbing";
    version = "2.1.1";
    sha256 = "039w2gfvapdy5a1gl1bkajr6glngp29j895cgysy8132vg80jgwb";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Binder";
    version = "2.1.1";
    sha256 = "0n91s6cjfv8plf5swhr307s849jmq2pa3i1rbpb0cb0grxml0mqm";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Tools";
    version = "2.1.8";
    sha256 = "0v1ndk7d6cvx94sxkgwjdhxiimw9273bnmrpx1v2743b99sghr40";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.WebUtilities";
    version = "2.0.3";
    sha256 = "16ihc24ar1y0hxrd2g5pnvl4hxmxxd4iggdxgsyxcnnd5j3l5lwl";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.DataProtection.Extensions";
    version = "2.1.1";
    sha256 = "0q39z21ys04n820p8wh49qhnjra1cf76nlhvc72w3rzq3ab57ahd";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Localization";
    version = "2.1.1";
    sha256 = "0776iilyhyn57qysjm5b0qd7jx65dzm57m7xq5i56rgba5dn11qf";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Extensions";
    version = "2.0.3";
    sha256 = "1wfdx9nx8r8vykb75l6yh7vp8niyaip755dcxakqxb3s1gvx19xl";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Rewrite";
    version = "2.1.1";
    sha256 = "0sn9s66vdi15spdlgrp89ryigbrjh22azvdzzhcz7zyzv5w32ays";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.DependencyInjection";
    version = "2.1.1";
    sha256 = "1ll7kmp8csngy27azxh0vcli2w4sgvamqh11c9z5d4spjh6jzxcp";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileProviders.Abstractions";
    version = "2.1.1";
    sha256 = "1shldpcczkc7rkxq0xd4zxm1r047bswy8nj1vx27aisni6nyqxys";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Localization";
    version = "2.0.3";
    sha256 = "04mf3fx5v4lq9kdmcrvyambv07958ckw74p9gfmwqy98fwv21936";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.UserSecrets";
    version = "2.1.1";
    sha256 = "1w36xzrxvs2p6lip7dshgpl1n331rbdrgxz59x42fzywsnrg3kfb";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Hosting";
    version = "2.1.1";
    sha256 = "1688cpxvz8nchdcfgzj94b35sihk02b3nvsa7vn74g4l7jzjpq2w";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Options";
    version = "2.1.1";
    sha256 = "0wgpsi874gzzjj099xbdmmsifslkbdjkxd5xrzpc5xdglpkw08vl";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.JsonPatch";
    version = "2.0.0";
    sha256 = "1w2bn9kqmv1lfdnv370mvyd6db2dz077z13kdd37gsijxwf0cilb";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.ObjectPool";
    version = "2.1.6";
    sha256 = "0j8fbfiw6dsn8ns0dymaisaqmyn65qzzbygafkmgn5z5ib83gdj7";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Razor.Runtime";
    version = "2.1.2";
    sha256 = "0qhg94kwk5hm10lkf6lc4araig1x3kwinyydp10il6m5rwvqdv9x";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.TraceSource";
    version = "2.1.1";
    sha256 = "1iz76bzg1a3rhr6n1sx7ldvwzfs6zly77m16fjzd5jqnwrkz991x";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Logging";
    version = "5.2.1";
    sha256 = "1gpka9jm2gl6f07pcwzwvaxw9xq1a19i9fskn0qs921c5grhlp3g";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration";
    version = "2.1.1";
    sha256 = "0244czr3jflvzcj6axq61j10dkl0f16ad34rw81ryg57v4cvlwx6";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Server.Kestrel";
    version = "2.1.3";
    sha256 = "1lcn2j2ps2d0rhry806shf9nfkcbqlysvx49qda7xszaz7xyjqji";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Ini";
    version = "2.1.1";
    sha256 = "0ppy5zsv4m5jx3yk5jj8mh1p6iiw40i9q949fhh81nqb577iqsr3";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Abstractions";
    version = "2.1.3";
    sha256 = "0cf7gdmla7i61rw7z9hsigh0x1fmlzk2glgsybayxsjp48w8hd3m";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Server.Kestrel.Transport.Abstractions";
    version = "2.1.3";
    sha256 = "0lnbbbs5lx2x414smmfinjlc5xqrbn0ps5m3nlgw6w5jajmlikkd";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Tokens";
    version = "5.2.1";
    sha256 = "03v6145vr1winq8xxfikydicds4f10qmy1ybyz2gfimnzzx51w00";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Caching.Abstractions";
    version = "2.1.2";
    sha256 = "199qx5sabv5waad42c9srnplbmhbfzkmp22pvl8lsq3w7kfakhr7";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Razor.ViewCompilation";
    version = "2.1.1";
    sha256 = "1mps2n1rzvvvnx8w3fqbinkgxskwgggmc373fqb3b5wzdp20w5qa";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Identity";
    version = "2.1.6";
    sha256 = "0g2mb4w7wnr62cyqcg69mxrmr9visqaqj0lclw3nywmzkbkva5gz";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Razor";
    version = "2.1.2";
    sha256 = "0bshgdilapyy487rvz40mpm1ybb5jhngl32dnz9llbns6gkgqd3b";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Console";
    version = "2.1.1";
    sha256 = "02jgxk4blj0gpbvndfih5mngqdhpmcsmcmpv6pds830b2by4dmcj";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Session";
    version = "2.1.1";
    sha256 = "0aiklp4g3f0bpnslc8fm5fap383ixwzmlsgdbpwj9bsr2c44dj4l";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.ResponseCaching.Abstractions";
    version = "2.1.1";
    sha256 = "1qjrlpg2gj800ngy8473nfb5m0xi4aapc264ik9z18cl5xl35h4j";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.ResponseCompression";
    version = "2.1.1";
    sha256 = "17ymf2j07igaqf8xaq8kqsiq0zpmw2x8620inphlspsd2jnn8lhp";
  })
  (fetchNuGet {
    name = "Microsoft.Win32.Registry";
    version = "4.4.0";
    sha256 = "088j2anh1rnkxdcycw5kgp97ahk7cj741y6kask84880835arsb6";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Twitter";
    version = "2.1.2";
    sha256 = "0fm6lljrnwdjqf4vmm051d3fddbp1vmw06vvkmn3rxa2sy9bkf7x";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging";
    version = "2.1.1";
    sha256 = "12pag6rf01xfa8x1h30mf4czfhlhg2kgi5q712jicy3h12c02w8y";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.FileExtensions";
    version = "2.1.1";
    sha256 = "0nfydlxvgs7bxqamj0jww1wwxbipzm30ygxabk29zx9q1r0qbnx5";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Routing";
    version = "2.1.1";
    sha256 = "065vy9nxcn87am2yxj918gs82g564jv1yfygfiygvw9wbvrfx8bd";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileProviders.Physical";
    version = "2.1.1";
    sha256 = "13rharvsycfk0056fbcx55npp9py7ng3hgcsasz1inva3q9lcngj";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Owin";
    version = "2.1.1";
    sha256 = "1qssvs35w2wizm676sfxhc52x6p36qiy3h1wips5300zfd7vx3rg";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Localization";
    version = "2.1.1";
    sha256 = "1d5ja7gb3ljyrk6r7kwrz315qkr8rdbc99rfxj93nnkmv6jzr7cc";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Features";
    version = "2.1.1";
    sha256 = "0vifha5wfynpgg4kvdmbqcgn6ngkxkkdmx1qnvlphmjx0iw7sw3d";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authorization";
    version = "2.1.2";
    sha256 = "1cgwwb1flxhwa40iziya3r5n42vnar2y5z6jzk9g01i0khyc5hmk";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Google";
    version = "2.1.8";
    sha256 = "17i89wyx732rb2cm1yhdcsp1pjzsrbfaqjv01vjz1fzxcf6rrzfa";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.HostFiltering";
    version = "2.1.1";
    sha256 = "0sq2hjvxsni24ah8dsp0ap52cjk7f6m538x5v2zw6l4ksd486c65";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Cryptography.KeyDerivation";
    version = "2.1.1";
    sha256 = "1phhx3mrd046v066kbxgsjw5jln0yxn5zn55yfdafi7g52ki343z";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Caching.Memory";
    version = "2.1.2";
    sha256 = "0j1rhzzz4bvnvcif6hc7ymq0sr3l6bmkfq5f7znjf6gi2yla8asr";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.ResponseCaching";
    version = "2.1.1";
    sha256 = "17k47gihl40pbqfsys7f7y4iqsrzcnhi2dxng5m71nlj3wwx2nma";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Xml";
    version = "4.4.0";
    sha256 = "1svh6kx2dcfsgwdj8drhyhfyjmsnlm8637sz28yb806qyppr7has";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.SpaServices.Extensions";
    version = "2.1.1";
    sha256 = "0v5nsslgvndsxxk7b0y2msbbinrazsz3xmhdkvg74xp41y3s7mqc";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.TagHelpers";
    version = "2.1.3";
    sha256 = "1xqxcdfhvqq4vhrvp9qyz7qprd35sh0s0znyziy8w90c3cwzh1ki";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authorization.Policy";
    version = "2.1.2";
    sha256 = "1zckwl0qpfz466vbgq92wq5v44cjrlsyszl5s98ins3q3kyq9xb5";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.DiagnosticAdapter";
    version = "2.1.0";
    sha256 = "14p8jc63p8gvj0qvypafj1avkfymv7w9ln7pbx7f1j1lb3abbz34";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.MiddlewareAnalysis";
    version = "2.1.1";
    sha256 = "0rvc0149jy2mrrrd9abmqgry9iqsyycakkkmin2sl4g1gjnhxwbp";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Hosting.Server.Abstractions";
    version = "2.1.1";
    sha256 = "0zldzvhh7xraps3gg47anva3dm3gssynw3k3gazjvqwb4gblsw6p";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.InMemory";
    version = "2.1.8";
    sha256 = "0jhrjagcknrkb13wm57nd4bi7aqamsniv4bzqhlk6j8sbn582cli";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Core";
    version = "2.1.1";
    sha256 = "05xw9g0rijma7hvimhsxb69ibj4ykf3c6qnlsi8xl7c8lz25j8i4";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Cryptography.Internal";
    version = "2.0.0";
    sha256 = "1np0082y7figx8k1dm2vx22xdzdbg54yi7v78g3xvd7krb69fff7";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.CommandLine";
    version = "2.1.1";
    sha256 = "0kz8khgnd57hjjlws25lcrw2459ycly9d1nxsv2k3gag7d1p09xw";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Options.ConfigurationExtensions";
    version = "2.1.1";
    sha256 = "0cp4l68jhnlgyz9v011hbzwxb5x22qh7n47qpivks0x38qnbfxiv";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.StaticFiles";
    version = "2.1.1";
    sha256 = "193kgnh75axi4c4sfjqmz73x440y9ksv1z83s7j5jd9q7zq1xpk3";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Cors";
    version = "2.1.1";
    sha256 = "123h27vy0ygzmfn2apa0q83ypwd07nrjbw443ykqkz5r6nbxipnv";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.DataProtection.Abstractions";
    version = "2.0.0";
    sha256 = "1h9bw4mxlazaz4akjpr4007pywib7pg8z8vhxcw5pmv92pr4mmj8";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Debug";
    version = "2.1.1";
    sha256 = "14wb3kjgd801v4lqjsfif7r347xz3krcy7ljmzjy8gs93rfgbzr8";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore";
    version = "2.1.7";
    sha256 = "10xkypd0dyaxliz0x5gfsbsq2qdvzcxrf3mwfql00qk8sc1315pf";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Routing.Abstractions";
    version = "2.1.1";
    sha256 = "04dx2ysk34x4vy1q0sxsqhzmfcxkn438k4fbsz5z8m0x6kdiv9gi";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileProviders.Composite";
    version = "2.1.1";
    sha256 = "0r6282xs56jb03v2mqljazd8l67wh9n5kcg2065m163xhqaf769g";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Http";
    version = "2.1.1";
    sha256 = "1vqa33bqrdzxcbim69czwdgjfs49j8hk7rqhsmci8j5spf5c6pcm";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Identity.EntityFrameworkCore";
    version = "2.1.6";
    sha256 = "01r9czyaszzl8fzrpd8qh05il691x7ybsv5w1882gfr9lns9m56f";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.RazorPages";
    version = "2.1.3";
    sha256 = "0km2pvi8ibyy7qd30bcz5igr63xjlg74rkj7d20mam61z21j8c58";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.SignalR";
    version = "1.0.4";
    sha256 = "0rr6yb4vkqp2hh729xn5xsw9fhd4hgmfwrbn4xqi44mdqqg2c74b";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.SpaServices";
    version = "2.1.1";
    sha256 = "0q22c55vci5ha17q8ysky0y94f7w6ncg0a8wz692njm4lnf6y7hz";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http";
    version = "2.1.1";
    sha256 = "04b9szil8ndw7k991m3x56xlm8pav0ap1caa9b23ik3jyavzq22a";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileProviders.Embedded";
    version = "2.1.1";
    sha256 = "1f6gjsb96fy106865w2xhl4hxhj4mlpac5qi43jmlh29pa3mbhqw";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Html.Abstractions";
    version = "2.1.1";
    sha256 = "05kp4727s1v63g4zw0asdkc2c8wfyzjaxdbppzrspf74dbq5gv5p";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Cryptography.Internal";
    version = "2.1.1";
    sha256 = "0h6q90acbl67qhn4kxgily5pk0rk9kx06n3pxqz0myjw85nkpz2x";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.WebEncoders";
    version = "2.1.1";
    sha256 = "1k5faxvvqbkb911vgak4c6iwf2v4yvc1z7snpkdwnicd251nmh0h";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.WebUtilities";
    version = "2.1.1";
    sha256 = "1744g3c04bz27lafx0q90cg0i17rahymgckbhggn1147pxs3lgpv";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Abstractions";
    version = "2.1.1";
    sha256 = "02jsghkbfjz0rvrnfz5pakv8dpyfcc3wjxmj4rpp0fc2mmpibkys";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Analyzers";
    version = "2.1.8";
    sha256 = "07661df7772ahmzb0zmh1k2ns2gqwf5486azpiz7k1zs0q3ib2qy";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.WebSockets";
    version = "2.1.7";
    sha256 = "1vva8alvdbl20z2b6xjlp3nsk51a47s5b3xv1ffn245nrwyiy8j4";
  })
  (fetchNuGet {
    name = "System.IO.Pipelines";
    version = "4.5.3";
    sha256 = "1z44vn1qp866lkx78cfqdd4vs7xn1hcfn7in6239sq2kgf5qiafb";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Server.Kestrel.Https";
    version = "2.1.3";
    sha256 = "193wz686iixqbi4mcxqffjj7rl9fnb7iln52iwly54sa1lwffqa9";
  })
  (fetchNuGet {
    name = "System.Runtime.CompilerServices.Unsafe";
    version = "4.5.1";
    sha256 = "1xcrjx5fwg284qdnxyi2d0lzdm5q4frlpkp0nf6vvkx1kdz2prrf";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.DataProtection.Abstractions";
    version = "2.1.1";
    sha256 = "0983rnhbj1v63yah90lb195592khxb3mvg3ab6n8brfr9yaxq3jy";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Antiforgery";
    version = "2.1.1";
    sha256 = "14gi2axzlfga4v7dinn8vwqzpw8s68caf5bacrbhlnz1l0hsxkza";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Relational";
    version = "2.1.8";
    sha256 = "1x4lkds6s9kdl7h9b9ylilqylzf410s2ax1m8kfd7yk5p2d0x6ss";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Formatters.Xml";
    version = "2.1.3";
    sha256 = "1ia8gk2vwz6zr0q21scs2h17gysj5ih963gc2kjca00mrrgqgjmm";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Analyzers";
    version = "2.1.3";
    sha256 = "0xd288hbzylm5z8akrkchsdbf3xprazgk03lik8m1ivfry70n95p";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Primitives";
    version = "2.1.6";
    sha256 = "00q6k44wg5fl5c5k57zj986sx39k4idx7mwvllwa4d0hys1rkaj5";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Identity.UI";
    version = "2.1.6";
    sha256 = "19ny72yiy2zkqcp71mlay489sraqp6ar1xfbxkya0h767by3sdjz";
  })
  (fetchNuGet {
    name = "Microsoft.Win32.Registry";
    version = "4.3.0";
    sha256 = "1gxyzxam8163vk1kb6xzxjj4iwspjsz9zhgn1w9rjzciphaz0ig7";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Razor.Language";
    version = "2.1.2";
    sha256 = "0fvhrmfd2b90g7man71mx69wxnag8sdf0j836g1yyyqlvib2b5y0";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Extensions";
    version = "2.1.1";
    sha256 = "01nbz8gl12bjcrw52z5w61khlzn02wngdkc68fsy7pl74vrzj69v";
  })
  (fetchNuGet {
    name = "Microsoft.Net.Http.Headers";
    version = "2.1.1";
    sha256 = "06q4xmxj25ry7gkl51zi7vh2957k9s49vdrlgfy03w9rqk81vnld";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.DataAnnotations";
    version = "2.1.3";
    sha256 = "1fxp9a714py5w7kbfjaa2vs1x7c09gdk1kgl794xi5gfg3sx6y63";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Identity.Core";
    version = "2.1.6";
    sha256 = "1mwgyrhsqn4vax9h22qcz0z29wb4dsxbxkxn0rz1klvr21y4m8mh";
  })
  (fetchNuGet {
    name = "runtime.win-x64.runtime.native.System.Data.SqlClient.sni";
    version = "4.4.0";
    sha256 = "0167s4mpq8bzk3y11pylnynzjr2nc84w96al9x4l8yrf34ccm18y";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Identity.Stores";
    version = "2.1.6";
    sha256 = "0akpyj2im8b9b0gad1q94k4r2fsrah04m96h9id28hgj4r2y1hay";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Diagnostics";
    version = "2.1.1";
    sha256 = "1rb0qh48mm7p0gk21h3vvjgf6rxqpy5f4mj2m16jyzlr9373wzav";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Hosting";
    version = "2.1.1";
    sha256 = "1prlc9qgwqvs0w3sjrbk9q8fhaq0l0pnvwyxa6gqcb0x82vmlhsl";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Server.IISIntegration";
    version = "2.1.7";
    sha256 = "1vilwzx018qqxxbcky8rpbyj08x51nl6s19k1aal9liq73m54x0z";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Design";
    version = "2.1.8";
    sha256 = "1bfkzbcqzj7bcbgh71klfmjhggnzqcr4r0n8py8nv7x7c77s261m";
  })
  (fetchNuGet {
    name = "runtime.win-x86.runtime.native.System.Data.SqlClient.sni";
    version = "4.4.0";
    sha256 = "0k3rkfrlm9jjz56dra61jgxinb8zsqlqzik2sjwz7f8v6z6ddycc";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Cors";
    version = "2.1.3";
    sha256 = "1gsz2rv07nm5k1qgh20p9k4a7hiabgm1w22465d4fxq6w25g8hsj";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Server.Kestrel.Core";
    version = "2.1.7";
    sha256 = "145ngkz19vhszvacz35v43kkj3006xg4ym2nl1k75q7p1xm9gi5m";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Server.HttpSys";
    version = "2.1.1";
    sha256 = "1d7ff5j7hy56f2n50975dadq924c3rwcj4gm5fnsm6jw522yajm3";
  })
  (fetchNuGet {
    name = "Newtonsoft.Json";
    version = "12.0.2";
    sha256 = "0w2fbji1smd2y7x25qqibf1qrznmv4s6s0jvrbvr6alb7mfyqvh5";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Xml";
    version = "2.1.1";
    sha256 = "0wvvvpbl54iibnw0b343fbwi8mz6r0ssz4fwmic80piq8rivggni";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.DataProtection";
    version = "2.1.1";
    sha256 = "0j4b88cxy9cm8jkm52109zbkrl1rw95w7b6rvxavah180k4kfli4";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.SignalR.Protocols.Json";
    version = "1.0.4";
    sha256 = "19y4khx189vpk9mh8in90qaixgvwklzxnl7i3yikw6k1z9bdczg2";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.OAuth";
    version = "2.1.2";
    sha256 = "08a89syqq9p1xw4c359v8qhnz92mks3mvvidwpb3387l4iflkvv4";
  })
  (fetchNuGet {
    name = "runtime.win-arm64.runtime.native.System.Data.SqlClient.sni";
    version = "4.4.0";
    sha256 = "07byf1iyqb7jkb17sp0mmjk46fwq6fx8mlpzywxl7qk09sma44gk";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.NodeServices";
    version = "2.1.1";
    sha256 = "1gr2d0rq73nyjayi3ywfi8146fph4x44kj636sqqz0vs7xmfnhi1";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Json";
    version = "2.1.1";
    sha256 = "11fiac26s1blvc08az3khfcvz519qvqq5cfw71fx6h31nvjriv2a";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.EventSource";
    version = "2.1.1";
    sha256 = "1h00avbrl3kd0xcvlvqfdgnrxm241ncs95bs9a0x42gl4hbibvb1";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.SignalR.Common";
    version = "1.0.4";
    sha256 = "1hj11ydv5mpzjq9pl8b7b8rmxmx07zw1mm9zy3wc5zgwrv68ji22";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.JsonPatch";
    version = "2.1.1";
    sha256 = "0anihfm5ghddxllvmxyzs2qrq44zx9xc5y02gw11rifigflfd54q";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Connections.Common";
    version = "1.0.4";
    sha256 = "0iz418sgrn1dgmw5pnja0i1zb2y7l6izpbj4f475dk6dkswlp0kr";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Connections";
    version = "1.0.4";
    sha256 = "0xpg2n9jjzknii10sicf1sw12xdzd814aisg16ixzkphdqs9fs3i";
  })
  (fetchNuGet {
    name = "System.Xml.XPath";
    version = "4.3.0";
    sha256 = "1cv2m0p70774a0sd1zxc8fm8jk3i5zk2bla3riqvi8gsm0r4kpci";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.SignalR.Core";
    version = "1.0.4";
    sha256 = "041bkqbwksdqanhbir8r1v2hyfnvxgac3q0yyiiw89gp6ass0sj3";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.OpenIdConnect";
    version = "2.1.2";
    sha256 = "08mfrxi7a7wmlqdzq2lr76k6k0741367ssmxkdwscsc9xp0k46l1";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Razor.Design";
    version = "2.1.2";
    sha256 = "05mpy9m6zj6dmiadzdyy35kwpx7p8s3c6qajyw82mdkgkg0avawq";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.JwtBearer";
    version = "2.1.2";
    sha256 = "11n324gvrhva1z67ns4x50vprh2pxd8vqjxdg2p3h3ql2mmsgjqb";
  })
  (fetchNuGet {
    name = "Microsoft.AspNet.WebApi.Client";
    version = "5.2.6";
    sha256 = "1df9w8c38g45p095r75md84ci5r7dsrj5h5p6yx18s0mmvlzj7wc";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.WsFederation";
    version = "2.1.2";
    sha256 = "1ws9j4nb6a36r9rd5dx3xn4v8jv03sbwdv2v0vd61vpqyby7cn1p";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.ViewFeatures";
    version = "2.1.3";
    sha256 = "17rfw9zi5p78a4ggvwrz3y8rwminsyzpqk9pvkhyjrpbcxwh5ff7";
  })
  (fetchNuGet {
    name = "Microsoft.CodeAnalysis.Razor";
    version = "2.1.2";
    sha256 = "16rfbxca55piyn76mvzc8zx2q1v1ydi19b4hg1a50wm7hkh380ym";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Razor";
    version = "2.1.3";
    sha256 = "1kl7m7nxi23msxpvflrc5dh960w1iyw4nwzrcp9z1hs81dr509xd";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore";
    version = "2.1.8";
    sha256 = "09808195syks2vi3l9xv27ff2mb6narnrb3qgpnk2zg05zkal8sp";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Core";
    version = "2.1.3";
    sha256 = "00nfj7iqr5kxw7s0bl55as2qxfnh12ds1zx1cgl1fkyhx9kljjlp";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.SqlServer";
    version = "2.1.8";
    sha256 = "04mv4z2arx59wadh5sq0xdrjkzv38k6aa3924rn1j79bz4wixvi9";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Caching.SqlServer";
    version = "2.1.2";
    sha256 = "088v649bc0i127cgn3vvibz8zrzmys6ns67ibar3a6a9884rw0wd";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Abstractions";
    version = "2.1.0";
    sha256 = "1gvgif1wcx4k6pv7gc00qv1hid945jdywy1s50s33q0hfd91hbnj";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Ini";
    version = "2.1.0";
    sha256 = "0bchsljywcq36si4zs2dcx2gj8x98ww93dh2bx2z6x5ilxyjnfip";
  })
  (fetchNuGet {
    name = "System.Runtime.Serialization.Xml";
    version = "4.3.0";
    sha256 = "1b2cxl2h7s8cydbhbmxhvvq071n9ck61g08npg4gyw7nvg37rfni";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.EnvironmentVariables";
    version = "2.1.0";
    sha256 = "0xx3idb1l5y1da5zynlys5gyarijmw5pc9hgci8xdxbrcv6rzbjb";
  })
  (fetchNuGet {
    name = "NicolasDorier.CommandLine.Configuration";
    version = "1.0.0.3";
    sha256 = "0al0pd4zhjpmn8m208xjmy17cbyab68grzdvzr2lhsckwkl6b1jg";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.Platforms";
    version = "1.1.0";
    sha256 = "08vh1r12g6ykjygq5d3vq09zylgb84l63k49jc4v8faw9g93iqqm";
  })
  (fetchNuGet {
    name = "Microsoft.Win32.Primitives";
    version = "4.3.0";
    sha256 = "0j0c1wj4ndj21zsgivsc24whiya605603kxrbiw6wkfdync464wq";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Debug";
    version = "4.3.0";
    sha256 = "00yjlf19wjydyr6cfviaph3vsjzg3d5nvnya26i2fvfg53sknh3y";
  })
  (fetchNuGet {
    name = "DigitalRuby.ExchangeSharp";
    version = "0.5.3";
    sha256 = "1qq6m3fg4rikgc1i950ml043b7si47lfqrr9hsdky4hd0ly5j6sg";
  })
  (fetchNuGet {
    name = "System.Net.Sockets";
    version = "4.3.0";
    sha256 = "1ssa65k6chcgi6mfmzrznvqaxk8jp0gvl77xhf1hbzakjnpxspla";
  })
  (fetchNuGet {
    name = "System.Runtime.Handles";
    version = "4.3.0";
    sha256 = "0sw2gfj2xr7sw9qjn0j3l9yw07x73lcs97p8xfc9w1x9h5g5m7i8";
  })
  (fetchNuGet {
    name = "NBitpayClient";
    version = "1.0.0.34";
    sha256 = "0531svp15qqlc3vbwh3k7lj58hizi7bapxaz5z32xxp3g04fnav3";
  })
  (fetchNuGet {
    name = "Microsoft.AspNet.SignalR.Client";
    version = "2.2.3";
    sha256 = "0icgy2pn02qnz0mw6dzry94pybdhk4ccam681ihclkxixyd12ivg";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Primitives";
    version = "4.3.0";
    sha256 = "0pyzncsv48zwly3lw4f2dayqswcfvdwq2nz0dgwmi7fj3pn64wby";
  })
  (fetchNuGet {
    name = "System.Text.Encoding.Extensions";
    version = "4.3.0";
    sha256 = "11q1y8hh5hrp5a3kw25cb6l00v5l5dvirkz8jr3sq00h1xgcgrxy";
  })
  (fetchNuGet {
    name = "System.Threading";
    version = "4.3.0";
    sha256 = "0rw9wfamvhayp5zh3j7p1yfmx9b5khbf4q50d8k5rk993rskfd34";
  })
  (fetchNuGet {
    name = "System.Threading.Timer";
    version = "4.3.0";
    sha256 = "1nx773nsx6z5whv8kaa1wjh037id2f1cxhb69pvgv12hd2b6qs56";
  })
  (fetchNuGet {
    name = "System.Globalization";
    version = "4.3.0";
    sha256 = "1cp68vv683n6ic2zqh2s1fn4c2sd87g5hpp6l4d4nj4536jz98ki";
  })
  (fetchNuGet {
    name = "NETStandard.Library";
    version = "1.6.1";
    sha256 = "1z70wvsx2d847a2cjfii7b83pjfs34q05gb037fdjikv5kbagml8";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Tracing";
    version = "4.3.0";
    sha256 = "1m3bx6c2s958qligl67q7grkwfz3w53hpy7nc97mh6f7j5k168c4";
  })
  (fetchNuGet {
    name = "System.Text.Encoding";
    version = "4.3.0";
    sha256 = "1f04lkir4iladpp51sdgmis9dj4y8v08cka0mbmsy0frc9a4gjqr";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Logging";
    version = "5.2.0";
    sha256 = "0wmgc841l6v13p9ys0b43fq89j6b46g8jav0lp6lpckywn97mfqf";
  })
  (fetchNuGet {
    name = "NBitcoin";
    version = "4.1.1.78";
    sha256 = "1fs2dnzpcmd7i4bkl0xfa248r10g9wryx93jw0c0ja2qjiab02l8";
  })
  (fetchNuGet {
    name = "System.Collections.Specialized";
    version = "4.3.0";
    sha256 = "1sdwkma4f6j85m3dpb53v9vcgd0zyc9jb33f8g63byvijcj39n20";
  })
  (fetchNuGet {
    name = "System.Net.WebHeaderCollection";
    version = "4.3.0";
    sha256 = "0ms3ddjv1wn8sqa5qchm245f3vzzif6l6fx5k92klqpn7zf4z562";
  })
  (fetchNuGet {
    name = "System.IO";
    version = "4.3.0";
    sha256 = "05l9qdrzhm4s5dixmx68kxwif4l99ll5gqmh7rqgw554fx0agv5f";
  })
  (fetchNuGet {
    name = "System.Threading.Tasks";
    version = "4.3.0";
    sha256 = "134z3v9abw3a6jsw17xl3f6hqjpak5l682k2vz39spj4kmydg6k7";
  })
  (fetchNuGet {
    name = "System.Net.WebSockets";
    version = "4.3.0";
    sha256 = "1gfj800078kggcgl0xyl00a6y5k4wwh2k2qm69rjy22wbmq7fy4p";
  })
  (fetchNuGet {
    name = "System.Collections";
    version = "4.3.0";
    sha256 = "19r4y64dqyrq6k4706dnyhhw7fs24kpp3awak7whzss39dakpxk9";
  })
  (fetchNuGet {
    name = "System.Resources.ResourceManager";
    version = "4.3.0";
    sha256 = "0sjqlzsryb0mg4y4xzf35xi523s4is4hz9q4qgdvlvgivl7qxn49";
  })
  (fetchNuGet {
    name = "System.IO.FileSystem";
    version = "4.3.0";
    sha256 = "0z2dfrbra9i6y16mm9v1v6k47f0fm617vlb7s5iybjjsz6g1ilmw";
  })
  (fetchNuGet {
    name = "System.Net.Primitives";
    version = "4.3.0";
    sha256 = "0c87k50rmdgmxx7df2khd9qj7q35j9rzdmm2572cc55dygmdk3ii";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Contracts";
    version = "4.3.0";
    sha256 = "1gxawcr4d2y5jmc6y7iv8c1q83hm22f6savcvspvhmpl974jigib";
  })
  (fetchNuGet {
    name = "System.Runtime.Extensions";
    version = "4.3.0";
    sha256 = "1ykp3dnhwvm48nap8q23893hagf665k0kn3cbgsqpwzbijdcgc60";
  })
  (fetchNuGet {
    name = "System.Globalization.Calendars";
    version = "4.3.0";
    sha256 = "1xwl230bkakzzkrggy1l1lxmm3xlhk4bq2pkv790j5lm8g887lxq";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.X509Certificates";
    version = "4.3.0";
    sha256 = "0valjcz5wksbvijylxijjxb1mp38mdhv03r533vnx1q3ikzdav9h";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Tools";
    version = "4.3.0";
    sha256 = "0in3pic3s2ddyibi8cvgl102zmvp9r9mchh82ns9f0ms4basylw1";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Algorithms";
    version = "4.3.0";
    sha256 = "03sq183pfl5kp7gkvq77myv7kbpdnq3y0xj7vi4q1kaw54sny0ml";
  })
  (fetchNuGet {
    name = "System.Console";
    version = "4.3.0";
    sha256 = "1flr7a9x920mr5cjsqmsy9wgnv3lvd0h1g521pdr1lkb2qycy7ay";
  })
  (fetchNuGet {
    name = "System.Net.Security";
    version = "4.3.0";
    sha256 = "1aa5igz31ivk6kpgsrwck3jccab7wd88wr52lddmgypmbh9mmf87";
  })
  (fetchNuGet {
    name = "System.Net.NameResolution";
    version = "4.3.0";
    sha256 = "15r75pwc0rm3vvwsn8rvm2krf929mjfwliv0mpicjnii24470rkq";
  })
  (fetchNuGet {
    name = "System.Reflection.Extensions";
    version = "4.3.0";
    sha256 = "02bly8bdc98gs22lqsfx9xicblszr2yan7v2mmw3g7hy6miq5hwq";
  })
  (fetchNuGet {
    name = "System.AppContext";
    version = "4.3.0";
    sha256 = "1649qvy3dar900z3g817h17nl8jp4ka5vcfmsr05kh0fshn7j3ya";
  })
  (fetchNuGet {
    name = "System.ObjectModel";
    version = "4.3.0";
    sha256 = "191p63zy5rpqx7dnrb3h7prvgixmk168fhvvkkvhlazncf8r3nc2";
  })
  (fetchNuGet {
    name = "System.Runtime.InteropServices";
    version = "4.3.0";
    sha256 = "00hywrn4g7hva1b2qri2s6rabzwgxnbpw9zfxmz28z09cpwwgh7j";
  })
  (fetchNuGet {
    name = "System.Runtime";
    version = "4.3.0";
    sha256 = "066ixvgbf2c929kgknshcxqj6539ax7b9m570cp8n179cpfkapz7";
  })
  (fetchNuGet {
    name = "runtime.native.System";
    version = "4.3.0";
    sha256 = "15hgf6zaq9b8br2wi1i3x0zvmk410nlmsmva9p0bbg73v6hml5k4";
  })
  (fetchNuGet {
    name = "runtime.native.System.Net.Http";
    version = "4.3.0";
    sha256 = "1n6rgz5132lcibbch1qlf0g9jk60r0kqv087hxc0lisy50zpm7kk";
  })
  (fetchNuGet {
    name = "System.Diagnostics.DiagnosticSource";
    version = "4.3.0";
    sha256 = "0z6m3pbiy0qw6rn3n209rrzf9x1k4002zh90vwcrsym09ipm2liq";
  })
  (fetchNuGet {
    name = "System.Globalization.Extensions";
    version = "4.3.0";
    sha256 = "02a5zfxavhv3jd437bsncbhd2fp1zv4gxzakp1an9l6kdq1mcqls";
  })
  (fetchNuGet {
    name = "System.IO.Compression.ZipFile";
    version = "4.3.0";
    sha256 = "1yxy5pq4dnsm9hlkg9ysh5f6bf3fahqqb6p8668ndy5c0lk7w2ar";
  })
  (fetchNuGet {
    name = "System.Reflection.Primitives";
    version = "4.3.0";
    sha256 = "04xqa33bld78yv5r93a8n76shvc8wwcdgr1qvvjh959g3rc31276";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Encoding";
    version = "4.3.0";
    sha256 = "1jr6w70igqn07k5zs1ph6xja97hxnb3mqbspdrff6cvssgrixs32";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.OpenSsl";
    version = "4.3.0";
    sha256 = "0givpvvj8yc7gv4lhb6s1prq6p2c4147204a0wib89inqzd87gqc";
  })
  (fetchNuGet {
    name = "System.Runtime.InteropServices.RuntimeInformation";
    version = "4.3.0";
    sha256 = "0q18r1sh4vn7bvqgd6dmqlw5v28flbpj349mkdish2vjyvmnb2ii";
  })
  (fetchNuGet {
    name = "runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "0zy5r25jppz48i2bkg8b9lfig24xixg6nm3xyr1379zdnqnpm8f6";
  })
  (fetchNuGet {
    name = "System.Collections";
    version = "4.0.11";
    sha256 = "1ga40f5lrwldiyw6vy67d0sg7jd7ww6kgwbksm19wrvq9hr0bsm6";
  })
  (fetchNuGet {
    name = "System.Collections.Concurrent";
    version = "4.0.12";
    sha256 = "07y08kvrzpak873pmyxs129g1ch8l27zmg51pcyj2jvq03n0r0fc";
  })
  (fetchNuGet {
    name = "YamlDotNet";
    version = "5.2.1";
    sha256 = "0nb34qcdhs5qn4783idg28f2kr89vaiyjn4v2barhv7i75zhym6y";
  })
  (fetchNuGet {
    name = "System.Diagnostics.DiagnosticSource";
    version = "4.0.0";
    sha256 = "1n6c3fbz7v8d3pn77h4v5wvsfrfg7v1c57lg3nff3cjyh597v23m";
  })
  (fetchNuGet {
    name = "System.IO.FileSystem.Primitives";
    version = "4.3.0";
    sha256 = "0j6ndgglcf4brg2lz4wzsh1av1gh8xrzdsn9f0yznskhqn1xzj9c";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Debug";
    version = "4.0.11";
    sha256 = "0gmjghrqmlgzxivd2xl50ncbglb7ljzb66rlx8ws6dv8jm0d5siz";
  })
  (fetchNuGet {
    name = "Microsoft.NetCore.Analyzers";
    version = "2.6.2";
    sha256 = "04si1bxx8g43i4pcm16gdh4l42vfdp6j526kxpvjl4f6wvbz1d46";
  })
  (fetchNuGet {
    name = "System.Globalization";
    version = "4.0.11";
    sha256 = "070c5jbas2v7smm660zaf1gh0489xanjqymkvafcs4f8cdrs1d5d";
  })
  (fetchNuGet {
    name = "System.Linq";
    version = "4.3.0";
    sha256 = "1w0gmba695rbr80l1k2h4mrwzbzsyfl2z4klmpbsvsg5pm4a56s7";
  })
  (fetchNuGet {
    name = "System.IO.Compression";
    version = "4.3.0";
    sha256 = "084zc82yi6yllgda0zkgl2ys48sypiswbiwrv7irb3r0ai1fp4vz";
  })
  (fetchNuGet {
    name = "System.Xml.XDocument";
    version = "4.3.0";
    sha256 = "08h8fm4l77n0nd4i4fk2386y809bfbwqb7ih9d7564ifcxr5ssxd";
  })
  (fetchNuGet {
    name = "System.Linq";
    version = "4.1.0";
    sha256 = "1ppg83svb39hj4hpp5k7kcryzrf3sfnm08vxd5sm2drrijsla2k5";
  })
  (fetchNuGet {
    name = "System.Reflection";
    version = "4.1.0";
    sha256 = "1js89429pfw79mxvbzp8p3q93il6rdff332hddhzi5wqglc4gml9";
  })
  (fetchNuGet {
    name = "System.Resources.ResourceManager";
    version = "4.0.1";
    sha256 = "0b4i7mncaf8cnai85jv3wnw6hps140cxz8vylv2bik6wyzgvz7bi";
  })
  (fetchNuGet {
    name = "System.Runtime.Extensions";
    version = "4.1.0";
    sha256 = "0rw4rm4vsm3h3szxp9iijc3ksyviwsv6f63dng3vhqyg4vjdkc2z";
  })
  (fetchNuGet {
    name = "System.Text.RegularExpressions";
    version = "4.3.0";
    sha256 = "1bgq51k7fwld0njylfn7qc5fmwrk2137gdq7djqdsw347paa9c2l";
  })
  (fetchNuGet {
    name = "System.Runtime.InteropServices";
    version = "4.1.0";
    sha256 = "01kxqppx3dr3b6b286xafqilv4s2n0gqvfgzfd4z943ga9i81is1";
  })
  (fetchNuGet {
    name = "System.Threading.ThreadPool";
    version = "4.3.0";
    sha256 = "027s1f4sbx0y1xqw2irqn6x161lzj8qwvnh2gn78ciiczdv10vf1";
  })
  (fetchNuGet {
    name = "System.Runtime.Numerics";
    version = "4.3.0";
    sha256 = "19rav39sr5dky7afygh309qamqqmi9kcwvz3i0c5700v0c5cg61z";
  })
  (fetchNuGet {
    name = "System.Diagnostics.DiagnosticSource";
    version = "4.5.0";
    sha256 = "1y8m0p3127nak5yspapfnz25qc9x53gqpvwr3hdpsvrcd2r1pgyj";
  })
  (fetchNuGet {
    name = "System.Text.Encodings.Web";
    version = "4.5.0";
    sha256 = "0srd5bva52n92i90wd88pzrqjsxnfgka3ilybwh7s6sf469y5s53";
  })
  (fetchNuGet {
    name = "System.Collections.Concurrent";
    version = "4.3.0";
    sha256 = "0wi10md9aq33jrkh2c24wr2n9hrpyamsdhsxdcnf43b7y86kkii8";
  })
  (fetchNuGet {
    name = "DBriize";
    version = "1.0.0.4";
    sha256 = "158691fwl97mym2nb8nvwf398siyimw0n6fjh1iwvg9qjfdbq39s";
  })
  (fetchNuGet {
    name = "System.Security.Principal";
    version = "4.3.0";
    sha256 = "12cm2zws06z4lfc4dn31iqv7072zyi4m910d4r6wm8yx85arsfxf";
  })
  (fetchNuGet {
    name = "System.Net.WebSockets.WebSocketProtocol";
    version = "4.5.3";
    sha256 = "0z9ccndkkq6gpsh35q3pjm4zya47p6vakcyj8nc352g4wiizqc8c";
  })
  (fetchNuGet {
    name = "System.Runtime.CompilerServices.Unsafe";
    version = "4.5.2";
    sha256 = "1vz4275fjij8inf31np78hw50al8nqkngk04p3xv5n4fcmf1grgi";
  })
  (fetchNuGet {
    name = "System.Memory";
    version = "4.5.1";
    sha256 = "0f07d7hny38lq9w69wx4lxkn4wszrqf9m9js6fh9is645csm167c";
  })
  (fetchNuGet {
    name = "System.ComponentModel.Annotations";
    version = "4.5.0";
    sha256 = "1jj6f6g87k0iwsgmg3xmnn67a14mq88np0l1ys5zkxhkvbc8976p";
  })
  (fetchNuGet {
    name = "System.Reflection";
    version = "4.3.0";
    sha256 = "0xl55k0mw8cd8ra6dxzh974nxif58s3k1rjv1vbd7gjbjr39j11m";
  })
  (fetchNuGet {
    name = "runtime.native.System.Net.Security";
    version = "4.3.0";
    sha256 = "0dnqjhw445ay3chpia9p6vy4w2j6s9vy3hxszqvdanpvvyaxijr3";
  })
  (fetchNuGet {
    name = "System.Reflection.Metadata";
    version = "1.6.0";
    sha256 = "1wdbavrrkajy7qbdblpbpbalbdl48q3h34cchz24gvdgyrlf15r4";
  })
  (fetchNuGet {
    name = "System.Net.Http";
    version = "4.3.0";
    sha256 = "1i4gc757xqrzflbk7kc5ksn20kwwfjhw9w7pgdkn19y3cgnl302j";
  })
  (fetchNuGet {
    name = "System.Memory";
    version = "4.5.2";
    sha256 = "1g24dwqfcmf4gpbgbhaw1j49xmpsz389l6bw2xxbsmnzvsf860ld";
  })
  (fetchNuGet {
    name = "System.Security.Claims";
    version = "4.3.0";
    sha256 = "0jvfn7j22l3mm28qjy3rcw287y9h65ha4m940waaxah07jnbzrhn";
  })
  (fetchNuGet {
    name = "Text.Analyzers";
    version = "2.6.2";
    sha256 = "1yshz0zm1zpwz2fhdn4n9ag8xifja6c2k3mlj93imdqr0b112p6k";
  })
  (fetchNuGet {
    name = "System.Numerics.Vectors";
    version = "4.5.0";
    sha256 = "1kzrj37yzawf1b19jq0253rcs8hsq1l2q8g69d7ipnhzb0h97m59";
  })
  (fetchNuGet {
    name = "System.Security.Principal.Windows";
    version = "4.5.1";
    sha256 = "1mv5mz5j7fqy0v9m2ky92wkh1ksmybhxqqqzllbp26z3rwyv07r4";
  })
  (fetchNuGet {
    name = "Microsoft.CSharp";
    version = "4.5.0";
    sha256 = "01i28nvzccxbqmiz217fxs6hnjwmd5fafs37rd49a6qp53y6623l";
  })
  (fetchNuGet {
    name = "System.Threading.Tasks.Extensions";
    version = "4.5.1";
    sha256 = "1ikrplvw4m6pzjbq3bfbpr572n4i9mni577zvmrkaygvx85q3myw";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Cng";
    version = "4.5.0";
    sha256 = "1pm4ykbcz48f1hdmwpia432ha6qbb9kbrxrrp7cg3m8q8xn52ngn";
  })
  (fetchNuGet {
    name = "System.Security.Principal.Windows";
    version = "4.3.0";
    sha256 = "00a0a7c40i3v4cb20s2cmh9csb5jv2l0frvnlzyfxh848xalpdwr";
  })
  (fetchNuGet {
    name = "Serilog.AspNetCore";
    version = "2.1.1";
    sha256 = "1f8dxc162pjz25r41f7f90xlgsnz7247cxzmyihqv6zz67zz5v08";
  })
  (fetchNuGet {
    name = "System.Xml.ReaderWriter";
    version = "4.3.0";
    sha256 = "0c47yllxifzmh8gq6rq6l36zzvw4kjvlszkqa9wq3fr59n0hl3s1";
  })
  (fetchNuGet {
    name = "System.Security.Principal.Windows";
    version = "4.5.0";
    sha256 = "0rmj89wsl5yzwh0kqjgx45vzf694v9p92r4x4q6yxldk1cv1hi86";
  })
  (fetchNuGet {
    name = "Microsoft.Win32.Registry";
    version = "4.5.0";
    sha256 = "1zapbz161ji8h82xiajgriq6zgzmb1f3ar517p2h63plhsq5gh2q";
  })
  (fetchNuGet {
    name = "System.Linq.Expressions";
    version = "4.3.0";
    sha256 = "0ky2nrcvh70rqq88m9a5yqabsl4fyd17bpr63iy2mbivjs2nyypv";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Xml";
    version = "4.5.0";
    sha256 = "1rk40x0msf9k7sxnjyizagjns1z25dh3cf22bx6hsx6vhf0sk08l";
  })
  (fetchNuGet {
    name = "System.Threading.Channels";
    version = "4.5.0";
    sha256 = "0n6z3wjia7h2a5vl727p97riydnb6jhhkb1pdcnizza02dwkz0nz";
  })
  (fetchNuGet {
    name = "System.Reflection.Emit";
    version = "4.3.0";
    sha256 = "11f8y3qfysfcrscjpjym9msk7lsfxkk4fmz9qq95kn3jd0769f74";
  })
  (fetchNuGet {
    name = "System.Xml.XmlSerializer";
    version = "4.0.11";
    sha256 = "01nzc3gdslw90qfykq4qzr2mdnqxjl4sj0wp3fixiwdmlmvpib5z";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Core";
    version = "2.0.4";
    sha256 = "0yr212chdmxd36nmml9jp85700wqwvshp0ip1giwwy0wv0nm5z7c";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Antiforgery";
    version = "2.0.3";
    sha256 = "0x6yhrmzvaw049llxzxmpq15krrvr9djfgkydr11p1sz06z71dxd";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Protocols.OpenIdConnect";
    version = "5.2.0";
    sha256 = "1g0ma5d4nm3934lwin6zqiw53r28dlgfbsaz8wl0fd2ri6r5qwqr";
  })
  (fetchNuGet {
    name = "BundlerMinifier.Core";
    version = "2.9.406";
    sha256 = "0k53zwr8b0md1cfg8lnfjsjcrqgp8mfk2y8xyi1vrdqvas2vj83n";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.DataAnnotations";
    version = "2.0.4";
    sha256 = "0rrjkjw82fikmknw62yf2d4n7fivpsb8xcf87hbbr2iy5iq24w73";
  })
  (fetchNuGet {
    name = "Newtonsoft.Json.Bson";
    version = "1.0.1";
    sha256 = "1r1hvj5gjl466bya2bfl5aaj8rbwyf5x1msg710wf3k2llbci1xa";
  })
  (fetchNuGet {
    name = "Newtonsoft.Json";
    version = "10.0.1";
    sha256 = "15ncqic3p2rzs8q8ppi0irl2miq75kilw4lh8yfgjq96id0ds3hv";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Protocols.WsFederation";
    version = "5.2.0";
    sha256 = "19dnbr15g17c3qrqm1sxik5rzpsw872bh60dfzh8z6wgqw74p6vy";
  })
  (fetchNuGet {
    name = "System.IdentityModel.Tokens.Jwt";
    version = "5.2.0";
    sha256 = "14qdqyvm24wpxiinsnk3k3n9849gd35wxaak9bnyxy3gcmvy3w4d";
  })
  (fetchNuGet {
    name = "Microsoft.CodeAnalysis.CSharp";
    version = "2.8.0";
    sha256 = "0p1xvw1h2fmnxywv1j4x6p3rgarpc8mfwfgn0vflk5xfnc961f6w";
  })
  (fetchNuGet {
    name = "xunit.runner.visualstudio";
    version = "2.4.1";
    sha256 = "0fln5pk18z98gp0zfshy1p9h6r9wc55nyqhap34k89yran646vhn";
  })
  (fetchNuGet {
    name = "BuildBundlerMinifier";
    version = "2.9.406";
    sha256 = "1qkgwbs1w97pi5bdbkbrgx6fyyg9mi43xfbr5ka3j7qggwwfw99k";
  })
  (fetchNuGet {
    name = "xunit";
    version = "2.4.1";
    sha256 = "0xf3kaywpg15flqaqfgywqyychzk15kz0kz34j21rcv78q9ywq20";
  })
  (fetchNuGet {
    name = "Microsoft.CodeAnalysis.Common";
    version = "2.8.0";
    sha256 = "0g4h41fs0r8lqh9pk9s4mc1090kdpa6sbxq4rc866s8hnq9s1h4j";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Formatters.Json";
    version = "2.0.4";
    sha256 = "1pfqbbjhqd42pnpzmgfwsc67s0q1cnpmdvbbcqir5vc9mrjlw4g0";
  })
  (fetchNuGet {
    name = "System.Diagnostics.DiagnosticSource";
    version = "4.5.1";
    sha256 = "1j8dgilsgd0n7y87wq1cdlnwck96wijhbyhdp4d01l1gzm3074c1";
  })
  (fetchNuGet {
    name = "Selenium.WebDriver";
    version = "3.141.0";
    sha256 = "09g0zhz6n7yhxmxlrpzjdykfavr3m4z1gb4cmq304dw0gr8s89mq";
  })
  (fetchNuGet {
    name = "System.Collections.Immutable";
    version = "1.5.0";
    sha256 = "1d5gjn5afnrf461jlxzawcvihz195gayqpcfbv6dd7pxa9ialn06";
  })
  (fetchNuGet {
    name = "Selenium.WebDriver.ChromeDriver";
    version = "74.0.3729.6";
    sha256 = "1lcl03ysmh31wp7w2raxwg6knydy632qr4rxqbsgpbsb6bkj530c";
  })
  (fetchNuGet {
    name = "U2F.Core";
    version = "1.0.4";
    sha256 = "0mk32yyihigp9njs54z411fswgzr6x3kw134c7ylwy2d2wmq2n9b";
  })
  (fetchNuGet {
    name = "System.Interactive.Async";
    version = "3.1.1";
    sha256 = "03iq20gq0n2b2sdzs5jhxf46nzkfgvzip6q5248vka2rcvn1yanh";
  })
  (fetchNuGet {
    name = "Remotion.Linq";
    version = "2.2.0";
    sha256 = "1y46ni0xswmmiryp8sydjgryafwn458dr91f9xn653w73kdyk4xf";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.DependencyModel";
    version = "2.1.0";
    sha256 = "0dl4qhjgifm6v3jsfzvzkvddyic77ggp9fq49ah661v45gk6ilgd";
  })
  (fetchNuGet {
    name = "System.Data.SqlClient";
    version = "4.5.1";
    sha256 = "10msv1gzz244slgbz2y71jql6ga72ksd1brycwh6ljq5hn46k9yq";
  })
  (fetchNuGet {
    name = "TwentyTwenty.Storage";
    version = "2.11.2";
    sha256 = "00b174z85qrif7w3z5xdx41zrdsz3wjzkx50p8g0nif3rd8vy5cn";
  })
  (fetchNuGet {
    name = "Microsoft.NET.Test.Sdk";
    version = "16.0.1";
    sha256 = "1ymca15zky76ck85ymbs3qlfgpv9bfn52hw6ksjvfbwwsddq2lv3";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.FileExtensions";
    version = "2.1.0";
    sha256 = "1lz2xwm63clbh9dfhmygbqvcp4dsrwh5jihv82dmqd5h7lqngl40";
  })
  (fetchNuGet {
    name = "TwentyTwenty.Storage.Azure";
    version = "2.11.2";
    sha256 = "0ljywn151qlwr3l7j8vqmpa0033jq7zqwf94fdrh8yffjpzh7naf";
  })
  (fetchNuGet {
    name = "NicolasDorier.CommandLine";
    version = "1.0.0.2";
    sha256 = "08a9l18zkhcfa6f56xqylzvmqjzgxsmgkpm2r3ckvxfyml6w0qyy";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Diagnostics.Abstractions";
    version = "2.0.3";
    sha256 = "06i2kg405y223dswsj9znlinyk97qly4z9wfyg0i74h9g7m0yz4j";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration";
    version = "2.1.0";
    sha256 = "04rjl38wlr1jjjpbzgf64jp0ql6sbzbil0brwq9mgr3hdgwd7vx2";
  })
  (fetchNuGet {
    name = "TwentyTwenty.Storage.Local";
    version = "2.11.2";
    sha256 = "0ilpb8m9jz0j4nj75pb7nk8rscwdsks9y42dp3k9wbakcky58jp3";
  })
  (fetchNuGet {
    name = "Serilog";
    version = "2.7.1";
    sha256 = "0073dyzl139apva2c1m7cbfh61qcvssn2z87f0fbjskdbq5imv01";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.Targets";
    version = "1.1.0";
    sha256 = "193xwf33fbm0ni3idxzbr5fdq3i2dlfgihsac9jj7whj0gd902nh";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Filter";
    version = "1.1.2";
    sha256 = "1pip87q89376xxpi3r5pf9vxhqxx21qrp179fbldbkr2m1577k9m";
  })
  (fetchNuGet {
    name = "xunit.analyzers";
    version = "0.10.0";
    sha256 = "15n02q3akyqbvkp8nq75a8rd66d4ax0rx8fhdcn8j78pi235jm7j";
  })
  (fetchNuGet {
    name = "xunit.assert";
    version = "2.4.1";
    sha256 = "1imynzh80wxq2rp9sc4gxs4x1nriil88f72ilhj5q0m44qqmqpc6";
  })
  (fetchNuGet {
    name = "runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.0";
    sha256 = "18pzfdlwsg2nb1jjjjzyb5qlgy6xjxzmhnfaijq5s2jw3cm3ab97";
  })
  (fetchNuGet {
    name = "TwentyTwenty.Storage.Google";
    version = "2.11.2";
    sha256 = "0phh3x12crl6170w3rpbwq0xldp3mpb4jql76l57d51f3s66x16k";
  })
  (fetchNuGet {
    name = "xunit.core";
    version = "2.4.1";
    sha256 = "1nnb3j4kzmycaw1g76ii4rfqkvg6l8gqh18falwp8g28h802019a";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Cng";
    version = "4.3.0";
    sha256 = "1k468aswafdgf56ab6yrn7649kfqx2wm9aslywjam1hdmk5yypmv";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Csp";
    version = "4.3.0";
    sha256 = "1x5wcrddf2s3hb8j78cry7yalca4lb5vfnkrysagbn6r9x6xvrx1";
  })
  (fetchNuGet {
    name = "LedgerWallet";
    version = "2.0.0.3";
    sha256 = "01kq5miavssqan4d3xm35swscgyyvjdxsmyp42dbss0pdk0zc4h0";
  })
  (fetchNuGet {
    name = "runtime.native.System.Security.Cryptography.Apple";
    version = "4.3.0";
    sha256 = "1b61p6gw1m02cc1ry996fl49liiwky6181dzr873g9ds92zl326q";
  })
  (fetchNuGet {
    name = "Newtonsoft.Json";
    version = "10.0.3";
    sha256 = "06vy67bkshclpz69kps4vgzc9h2cgg41c8vlqmdbwclfky7c4haq";
  })
  (fetchNuGet {
    name = "runtime.debian.8-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "0rwpqngkqiapqc5c2cpkj7idhngrgss5qpnqg0yh40mbyflcxf8i";
  })
  (fetchNuGet {
    name = "runtime.rhel.7-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "1cpx56mcfxz7cpn57wvj18sjisvzq8b5vd9rw16ihd2i6mcp3wa1";
  })
  (fetchNuGet {
    name = "Npgsql.EntityFrameworkCore.PostgreSQL";
    version = "2.1.2";
    sha256 = "1nfkn2ny1jjq4ghn8f39bpm7dy953jgmpizy053yr6szib9g7yh1";
  })
  (fetchNuGet {
    name = "runtime.ubuntu.14.04-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "15gsm1a8jdmgmf8j5v1slfz8ks124nfdhk2vxs2rw3asrxalg8hi";
  })
  (fetchNuGet {
    name = "runtime.ubuntu.16.10-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "1x0g58pbpjrmj2x2qw17rdwwnrcl0wvim2hdwz48lixvwvp22n9c";
  })
  (fetchNuGet {
    name = "Pomelo.EntityFrameworkCore.MySql";
    version = "2.1.2";
    sha256 = "0i349a4fg0h0rvcyd3xq5yqfnq7rq0b8i845xrc6br1666vb09sb";
  })
  (fetchNuGet {
    name = "runtime.opensuse.13.2-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "096ch4n4s8k82xga80lfmpimpzahd2ip1mgwdqgar0ywbbl6x438";
  })
  (fetchNuGet {
    name = "runtime.fedora.24-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "0404wqrc7f2yc0wxv71y3nnybvqx8v4j9d47hlscxy759a525mc3";
  })
  (fetchNuGet {
    name = "runtime.osx.10.10-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "1m9z1k9kzva9n9kwinqxl97x2vgl79qhqjlv17k9s2ymcyv2bwr6";
  })
  (fetchNuGet {
    name = "runtime.opensuse.42.1-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "1dm8fifl7rf1gy7lnwln78ch4rw54g0pl5g1c189vawavll7p6rj";
  })
  (fetchNuGet {
    name = "runtime.fedora.23-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "1n06gxwlinhs0w7s8a94r1q3lwqzvynxwd3mp10ws9bg6gck8n4r";
  })
  (fetchNuGet {
    name = "runtime.ubuntu.16.04-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "0q0n5q1r1wnqmr5i5idsrd9ywl33k0js4pngkwq9p368mbxp8x1w";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Sqlite";
    version = "2.1.4";
    sha256 = "1ic2jhy32r1347cv27zcmyhqmhrg3rnbcvzp9wkafzqm98s2xa6f";
  })
  (fetchNuGet {
    name = "OpenIddict.EntityFrameworkCore";
    version = "2.0.0";
    sha256 = "0wpvvfjjbzs74qrkg1q45ky0pc8y37z2vr3yya61a5ih7ddrihji";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.Platforms";
    version = "1.0.1";
    sha256 = "01al6cfxp68dscl15z7rxfw9zvhm64dncsw09a1vmdkacsa2v6lr";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.Targets";
    version = "1.0.1";
    sha256 = "0ppdkwy6s9p7x9jix3v4402wb171cdiibq7js7i13nxpdky7074p";
  })
  (fetchNuGet {
    name = "Serilog.Sinks.File";
    version = "4.0.0";
    sha256 = "0n1hs59gh8g7pmqqagr4nkaasir5p7ggpdhpvv8bs73yxfp14khp";
  })
  (fetchNuGet {
    name = "System.Runtime";
    version = "4.1.0";
    sha256 = "02hdkgk13rvsd6r9yafbwzss8kr55wnj8d5c7xjnp8gqrwc8sn0m";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Tracing";
    version = "4.1.0";
    sha256 = "1d2r76v1x610x61ahfpigda89gd13qydz6vbwzhpqlyvq8jj6394";
  })
  (fetchNuGet {
    name = "System.Threading";
    version = "4.0.11";
    sha256 = "19x946h926bzvbsgj28csn46gak2crv2skpwsx80hbgazmkgb1ls";
  })
  (fetchNuGet {
    name = "System.Buffers";
    version = "4.3.0";
    sha256 = "0fgns20ispwrfqll4q1zc1waqcmylb3zc50ys9x8zlwxh9pmd9jy";
  })
  (fetchNuGet {
    name = "runtime.native.System.IO.Compression";
    version = "4.3.0";
    sha256 = "1vvivbqsk6y4hzcid27pqpm5bsi6sc50hvqwbcx8aap5ifrxfs8d";
  })
  (fetchNuGet {
    name = "System.Threading.Tasks.Extensions";
    version = "4.3.0";
    sha256 = "1xxcx2xh8jin360yjwm4x4cf5y3a2bwpn2ygkfkwkicz7zk50s2z";
  })
  (fetchNuGet {
    name = "NicolasDorier.RateLimits";
    version = "1.0.0.3";
    sha256 = "00qvqv0hwf8plc4d209iglqc540gdlp52fzyryfny574x9mlv7cd";
  })
  (fetchNuGet {
    name = "OpenIddict";
    version = "2.0.0";
    sha256 = "0i0dwnin37jf2dyrf9m25v9rigjj1j9nhws61d36rwiylva4c13w";
  })
  (fetchNuGet {
    name = "BundlerMinifier.TagHelpers";
    version = "2.9.406";
    sha256 = "0js4wzv3k6spp1ipxns1jpdsgy8lzzrgcjrqyy5gq6bnvd139q6h";
  })
  (fetchNuGet {
    name = "System.Reflection.Emit.ILGeneration";
    version = "4.3.0";
    sha256 = "0w1n67glpv8241vnpz1kl14sy7zlnw414aqwj4hcx5nd86f6994q";
  })
  (fetchNuGet {
    name = "System.Threading.Tasks";
    version = "4.0.11";
    sha256 = "0nr1r41rak82qfa5m0lhk9mp0k93bvfd7bbd9sdzwx9mb36g28p5";
  })
  (fetchNuGet {
    name = "System.IO";
    version = "4.1.0";
    sha256 = "1g0yb8p11vfd0kbkyzlfsbsp5z44lwsvyc0h3dpw6vqnbi035ajp";
  })
  (fetchNuGet {
    name = "SSH.NET";
    version = "2016.1.0";
    sha256 = "0q08bf9sdf1rf9763z4bk2mr6z381iybm73823scmq9qcpr2jk4d";
  })
  (fetchNuGet {
    name = "System.Reflection.TypeExtensions";
    version = "4.3.0";
    sha256 = "0y2ssg08d817p0vdag98vn238gyrrynjdj4181hdg780sif3ykp1";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.WebEncoders";
    version = "2.0.2";
    sha256 = "1c841ffvv567zivyaxjjgljnafdqd3738dv8rc3rgmzrpflgagmj";
  })
  (fetchNuGet {
    name = "System.Reflection.Primitives";
    version = "4.0.1";
    sha256 = "1bangaabhsl4k9fg8khn83wm6yial8ik1sza7401621jc6jrym28";
  })
  (fetchNuGet {
    name = "HtmlSanitizer";
    version = "4.0.207";
    sha256 = "0lcy26kh3204rsba3y25zgz4l4m4r6pvdcwa5swjvjkm3ny7hgvf";
  })
  (fetchNuGet {
    name = "System.Runtime.Handles";
    version = "4.0.1";
    sha256 = "1g0zrdi5508v49pfm3iii2hn6nm00bgvfpjq1zxknfjrxxa20r4g";
  })
  (fetchNuGet {
    name = "BTCPayServer.Lightning.All";
    version = "1.1.0.22";
    sha256 = "1q2dkj2wgnnn4aqcmd36pmgzkf34j96q5w7gxmllbl2zljzagpas";
  })
  (fetchNuGet {
    name = "System.Reflection.Emit.Lightweight";
    version = "4.3.0";
    sha256 = "0ql7lcakycrvzgi9kxz1b3lljd990az1x6c4jsiwcacrvimpib5c";
  })
  (fetchNuGet {
    name = "TwentyTwenty.Storage.Amazon";
    version = "2.11.2";
    sha256 = "1gy1f1qxwyllz8xdzahxciiznxkni57xmnx7aqdy2bsl7wyfqwk0";
  })
  (fetchNuGet {
    name = "Serilog.Extensions.Logging";
    version = "2.0.0";
    sha256 = "038vv84fw602rcs3xb8gjzfrmi9jmqfpyabj1bi7wi0fhvrbyh4m";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.Platforms";
    version = "2.0.0";
    sha256 = "1fk2fk2639i7nzy58m9dvpdnzql4vb8yl8vr19r2fp8lmj9w2jr0";
  })
  (fetchNuGet {
    name = "Microsoft.CodeAnalysis.Common";
    version = "2.3.1";
    sha256 = "1q60kl3q4zx11xbyg33v7ya8qbdk0mdsw2x3vk2zzah48mxb6cw9";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.DependencyInjection";
    version = "2.0.0";
    sha256 = "018izzgykaqcliwarijapgki9kp2c560qv8qsxdjywr7byws5apq";
  })
  (fetchNuGet {
    name = "System.Security.AccessControl";
    version = "4.5.0";
    sha256 = "1wvwanz33fzzbnd2jalar0p0z3x0ba53vzx1kazlskp7pwyhlnq0";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging";
    version = "2.0.0";
    sha256 = "1jkwjcq1ld9znz1haazk8ili2g4pzfdp6i7r7rki4hg3jcadn386";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Hosting.Abstractions";
    version = "2.0.0";
    sha256 = "0x6vw7kiy9z7cdmgbqav0d9wq66032wg39l2c9cv6xvxxvdpbkz7";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Pkcs";
    version = "4.5.0";
    sha256 = "16dhiz2qypk289dxiqa9rb7jmslnami6bykalv5dvbd8j91zikpy";
  })
  (fetchNuGet {
    name = "NUglify";
    version = "1.5.12";
    sha256 = "0f4gs31z8dwfvd246nrv3m0qkxzav37hxynx2maykza017khynyf";
  })
  (fetchNuGet {
    name = "Microsoft.CodeCoverage";
    version = "16.0.1";
    sha256 = "0qigva01sawgwily24ms3faavn4y7cb4b44mdqq3n8ipfjsn7775";
  })
  (fetchNuGet {
    name = "Microsoft.TestPlatform.TestHost";
    version = "16.0.1";
    sha256 = "0sisl5v63i5rgfxamshpx3977cw459d7fz721z06c39mkgw6k03m";
  })
  (fetchNuGet {
    name = "System.Security.Permissions";
    version = "4.5.0";
    sha256 = "192ww5rm3c9mirxgl1nzyrwd18am3izqls0hzm0fvcdjl5grvbhm";
  })
  (fetchNuGet {
    name = "Portable.BouncyCastle";
    version = "1.8.1.3";
    sha256 = "1lv1ljaz8df835jgmp3ny1xgqqjf1s9f25baw7bf8d24qlf25i2g";
  })
  (fetchNuGet {
    name = "WindowsAzure.Storage";
    version = "9.1.1";
    sha256 = "0njq60qlam5db85js957f374vq0a37vmmaq2y74ncl25cwffrxq2";
  })
  (fetchNuGet {
    name = "xunit.extensibility.core";
    version = "2.4.1";
    sha256 = "103qsijmnip2pnbhciqyk2jyhdm6snindg5z2s57kqf5pcx9a050";
  })
  (fetchNuGet {
    name = "xunit.extensibility.execution";
    version = "2.4.1";
    sha256 = "1pbilxh1gp2ywm5idfl0klhl4gb16j86ib4x83p8raql1dv88qia";
  })
  (fetchNuGet {
    name = "Microsoft.CSharp";
    version = "4.3.0";
    sha256 = "0gw297dgkh0al1zxvgvncqs0j15lsna9l1wpqas4rflmys440xvb";
  })
  (fetchNuGet {
    name = "System.ComponentModel.TypeConverter";
    version = "4.3.0";
    sha256 = "17ng0p7v3nbrg3kycz10aqrrlw4lz9hzhws09pfh8gkwicyy481x";
  })
  (fetchNuGet {
    name = "System.Dynamic.Runtime";
    version = "4.3.0";
    sha256 = "1d951hrvrpndk7insiag80qxjbf2y0y39y8h5hnq9612ws661glk";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Razor.Language";
    version = "2.0.3";
    sha256 = "1g6a0d2mdhfjm1wfk2jblpdl03r7j8bw2qzv2c0fal8zgkmpgrqz";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Abstractions";
    version = "1.1.2";
    sha256 = "0j9b4z3pf8a5xphx3ksn6jm01rf4z001vfll5kcbxw995xcidjw1";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Protocols";
    version = "5.2.0";
    sha256 = "03rblmm07y3w6cs36a4zh2dhhqgqk4w2z58jxql1ch013s5mmc74";
  })
  (fetchNuGet {
    name = "System.Xml.XmlDocument";
    version = "4.3.0";
    sha256 = "0bmz1l06dihx52jxjr22dyv5mxv6pj4852lx68grjm7bivhrbfwi";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Abstractions";
    version = "1.1.2";
    sha256 = "0z83kxfzsgqlshg4x1mhdnhlrprrwsgnnibvwk257drzy9079994";
  })
  (fetchNuGet {
    name = "System.Runtime.Serialization.Formatters";
    version = "4.3.0";
    sha256 = "114j35n8gcvn3sqv9ar36r1jjq0y1yws9r0yk8i6wm4aq7n9rs0m";
  })
  (fetchNuGet {
    name = "Google.Cloud.Storage.V1";
    version = "2.1.0";
    sha256 = "1xsfcdyvfrgy6cqxg12y6dddssr2wrw06nmv3cgax4ibbvzljxpx";
  })
  (fetchNuGet {
    name = "Hid.Net";
    version = "1.1.6";
    sha256 = "1gfz3bnbai9008nayxpq6gkh8xk92v5z1gjqr0csf5ijz0z6dhjp";
  })
  (fetchNuGet {
    name = "NBitcoin";
    version = "4.1.1.20";
    sha256 = "1xhgcghbkx9k1929irhy09737sg4giwxrx6va82y172i6296nkah";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Abstractions";
    version = "2.1.2";
    sha256 = "0vaizgkr95iml7jsqv3wi6rjrqrdn6zdzf38pvfawski81i9a5fw";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Relational";
    version = "2.1.2";
    sha256 = "1bf10yb41avn27fb42yw3hzsvvirddlwh5li6v16s9dl0f4fj18g";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Tokens";
    version = "5.2.0";
    sha256 = "1ymny8dm2vbhnhk6dz9vqpnn0k4g9zf9yyfk2zmg43pypk69j6zr";
  })
  (fetchNuGet {
    name = "Npgsql";
    version = "4.0.3";
    sha256 = "0vzxdcml5vsmc70inr7kbm2h5ljw2wjw7nwy0a7gng8ckzmr27sf";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore";
    version = "2.1.2";
    sha256 = "05g59xpckk1d7scnlrk7dkx9khih3ydhgkrhpy2w1wb0yin3yzv1";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Xml";
    version = "5.2.0";
    sha256 = "12nfnvqansl7rc4h1irgjq4nhcahcjkagplwhpa0lh6y48a7qadq";
  })
  (fetchNuGet {
    name = "Pomelo.JsonObject";
    version = "2.0.0";
    sha256 = "1dxy2mb1xj37jm0w4cpxmmh7hkknibzpz68gp276xd84jw7l8rnb";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Tokens.Saml";
    version = "5.2.0";
    sha256 = "1jvacjjyh72c9zf0y6yhjjn06jjdn0033wa8j71l63zbav4b6xgz";
  })
  (fetchNuGet {
    name = "Microsoft.CodeAnalysis.Analyzers";
    version = "1.1.0";
    sha256 = "08r667hj2259wbim1p3al5qxkshydykmb7nd9ygbjlg4mmydkapc";
  })
  (fetchNuGet {
    name = "System.Diagnostics.StackTrace";
    version = "4.3.0";
    sha256 = "0ash4h9k0m7xsm0yl79r0ixrdz369h7y922wipp5gladmlbvpyjd";
  })
  (fetchNuGet {
    name = "System.Threading.Thread";
    version = "4.3.0";
    sha256 = "0y2xiwdfcph7znm2ysxanrhbqqss6a3shi1z3c779pj2s523mjx4";
  })
  (fetchNuGet {
    name = "System.ValueTuple";
    version = "4.3.0";
    sha256 = "1227k7fxbxapq7dms4lvwwjdf3pr1jcsmhy2nzzhj6g6hs530hxn";
  })
  (fetchNuGet {
    name = "System.Threading.Tasks.Parallel";
    version = "4.3.0";
    sha256 = "1rr3qa4hxwyj531s4nb3bwrxnxxwz617i0n9gh6x7nr7dd3ayzgh";
  })
  (fetchNuGet {
    name = "MySqlConnector";
    version = "0.44.1";
    sha256 = "0nbcjvdf5vfq834f8440z4gmdn65y02fyyjvhldd47frv105763c";
  })
  (fetchNuGet {
    name = "System.Diagnostics.FileVersionInfo";
    version = "4.3.0";
    sha256 = "094hx249lb3vb336q7dg3v257hbxvz2jnalj695l7cg5kxzqwai7";
  })
  (fetchNuGet {
    name = "System.Collections.Immutable";
    version = "1.3.1";
    sha256 = "17615br2x5riyx8ivf1dcqwj6q3ipq1bi5hqhw54yfyxmx38ddva";
  })
  (fetchNuGet {
    name = "System.Reflection.Metadata";
    version = "1.4.2";
    sha256 = "08b7b43vczlliv8k7q43jinjfrxwpljsglw7sxmc6sd7d54pd1vi";
  })
  (fetchNuGet {
    name = "SQLitePCLRaw.bundle_green";
    version = "1.1.11";
    sha256 = "1j10nxls4isqyql0lqk3bhq27g4v2v7jxlh5a4f1qvpfhjs4w18p";
  })
  (fetchNuGet {
    name = "System.Xml.XPath.XDocument";
    version = "4.3.0";
    sha256 = "1wxckyb7n1pi433xzz0qcwcbl1swpra64065mbwwi8dhdc4kiabn";
  })
  (fetchNuGet {
    name = "System.Text.Encoding.CodePages";
    version = "4.3.0";
    sha256 = "0lgxg1gn7pg7j0f942pfdc9q7wamzxsgq3ng248ikdasxz0iadkv";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Sqlite.Core";
    version = "2.1.4";
    sha256 = "1bhw8l895cxns8cqb1bg3zr9q6n1lzfisvmlb7v85pg6mhvyxdvs";
  })
  (fetchNuGet {
    name = "NETStandard.Library";
    version = "1.6.0";
    sha256 = "0nmmv4yw7gw04ik8ialj3ak0j6pxa9spih67hnn1h2c38ba8h58k";
  })
  (fetchNuGet {
    name = "OpenIddict.EntityFrameworkCore.Models";
    version = "2.0.0";
    sha256 = "1x53f96ghlh5ymvmh88vihkmr1cc286ndfppnp2mvgylfpg11k10";
  })
  (fetchNuGet {
    name = "System.ObjectModel";
    version = "4.0.12";
    sha256 = "1sybkfi60a4588xn34nd9a58png36i0xr4y4v4kqpg8wlvy5krrj";
  })
  (fetchNuGet {
    name = "OpenIddict.Core";
    version = "2.0.0";
    sha256 = "096px7ww2anp7297cxp346xi0ki13kb94l4jhad8r28pknqf80r7";
  })
  (fetchNuGet {
    name = "System.Reflection.Extensions";
    version = "4.0.1";
    sha256 = "0m7wqwq0zqq9gbpiqvgk3sr92cbrw7cp3xn53xvw7zj6rz6fdirn";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Relational";
    version = "2.0.0";
    sha256 = "0d0514day4ykw2zqyxy5a1063ymvb36fbd2f3d631ahwvk3x3cp9";
  })
  (fetchNuGet {
    name = "System.IO.FileSystem.Primitives";
    version = "4.0.1";
    sha256 = "1s0mniajj3lvbyf7vfb5shp4ink5yibsx945k6lvxa96r8la1612";
  })
  (fetchNuGet {
    name = "System.Linq.Queryable";
    version = "4.0.1";
    sha256 = "11jn9k34g245yyf260gr3ldzvaqa9477w2c5nhb1p8vjx4xm3qaw";
  })
  (fetchNuGet {
    name = "System.Threading.Timer";
    version = "4.0.1";
    sha256 = "15n54f1f8nn3mjcjrlzdg6q3520571y012mx7v991x2fvp73lmg6";
  })
  (fetchNuGet {
    name = "System.Text.Encoding.Extensions";
    version = "4.0.11";
    sha256 = "08nsfrpiwsg9x5ml4xyl3zyvjfdi4mvbqf93kjdh11j4fwkznizs";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileProviders.Abstractions";
    version = "2.0.1";
    sha256 = "1pwmwb3n47420hbrg1m8s9ky408wqng91qba4qr0czd2rwn4rlgc";
  })
  (fetchNuGet {
    name = "System.IO.FileSystem";
    version = "4.0.1";
    sha256 = "0kgfpw6w4djqra3w5crrg8xivbanh1w9dh3qapb28q060wb9flp1";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Core";
    version = "2.1.0";
    sha256 = "1gfaxk6d1k0cqaymv5vx26ifvcrxsizxzl8s1rzw16v47vvyqyxp";
  })
  (fetchNuGet {
    name = "OpenIddict.Validation";
    version = "2.0.0";
    sha256 = "0a95sgqxzbkqwxya37m93fdf38qjizyw4hp7m5yypkv15fgvvjyq";
  })
  (fetchNuGet {
    name = "System.Linq.Expressions";
    version = "4.1.0";
    sha256 = "1gpdxl6ip06cnab7n3zlcg6mqp7kknf73s8wjinzi4p0apw82fpg";
  })
  (fetchNuGet {
    name = "System.Dynamic.Runtime";
    version = "4.0.11";
    sha256 = "1pla2dx8gkidf7xkciig6nifdsb494axjvzvann8g2lp3dbqasm9";
  })
  (fetchNuGet {
    name = "OpenIddict.Abstractions";
    version = "2.0.0";
    sha256 = "07jqa2i4mr2pk1r3r0ps939s410ilfzk982b1is73qs196kafgv0";
  })
  (fetchNuGet {
    name = "Microsoft.DotNet.PlatformAbstractions";
    version = "2.1.0";
    sha256 = "1qydvyyinj3b5mraazjal3n2k7jqhn05b6n1a2f3qjkqkxi63dmy";
  })
  (fetchNuGet {
    name = "OpenIddict.Mvc";
    version = "2.0.0";
    sha256 = "06v8xbcsxll2az27ambvvpf73z05innfhppny6jcpzk8zkjjcd38";
  })
  (fetchNuGet {
    name = "OpenIddict.Server";
    version = "2.0.0";
    sha256 = "1zyv18f6g60ml00kps80zvyljmcn3r4cnb4dzfjcn89h7hw5lgkb";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.TagHelpers";
    version = "2.0.4";
    sha256 = "0czicq663q5y9zcmhkmi05mng4ajnkjpq692ba5s2r09xm9p3z0c";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Tools";
    version = "4.0.1";
    sha256 = "19cknvg07yhakcvpxg3cxa0bwadplin6kyxd8mpjjpwnp56nl85x";
  })
  (fetchNuGet {
    name = "System.Text.Encoding.CodePages";
    version = "4.5.0";
    sha256 = "19x38911pawq4mrxrm04l2bnxwxxlzq8v8rj4cbxnfjj8pnd3vj3";
  })
  (fetchNuGet {
    name = "System.Net.Sockets";
    version = "4.1.0";
    sha256 = "1385fvh8h29da5hh58jm1v78fzi9fi5vj93vhlm2kvqpfahvpqls";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Algorithms";
    version = "4.2.0";
    sha256 = "148s9g5dgm33ri7dnh19s4lgnlxbpwvrw2jnzllq2kijj4i4vs85";
  })
  (fetchNuGet {
    name = "System.Text.RegularExpressions";
    version = "4.1.0";
    sha256 = "1mw7vfkkyd04yn2fbhm38msk7dz2xwvib14ygjsb8dq2lcvr18y7";
  })
  (fetchNuGet {
    name = "runtime.native.System.Data.SqlClient.sni";
    version = "4.4.0";
    sha256 = "15wnpyy506q3vyk1yzdjjf49zpdynr7ghh0x5fbz4pcc1if0p9ky";
  })
  (fetchNuGet {
    name = "System.Runtime.CompilerServices.Unsafe";
    version = "4.5.0";
    sha256 = "17labczwqk3jng3kkky73m0jhi8wc21vbl7cz5c0hj2p1dswin43";
  })
  (fetchNuGet {
    name = "Newtonsoft.Json";
    version = "9.0.1";
    sha256 = "0mcy0i7pnfpqm4pcaiyzzji4g0c8i3a5gjz28rrr28110np8304r";
  })
  (fetchNuGet {
    name = "System.Threading.ThreadPool";
    version = "4.0.10";
    sha256 = "0fdr61yjcxh5imvyf93n2m3n5g9pp54bnw2l1d2rdl9z6dd31ypx";
  })
  (fetchNuGet {
    name = "System.Threading.Thread";
    version = "4.0.0";
    sha256 = "1gxxm5fl36pjjpnx1k688dcw8m9l7nmf802nxis6swdaw8k54jzc";
  })
  (fetchNuGet {
    name = "System.Xml.XmlDocument";
    version = "4.0.1";
    sha256 = "0ihsnkvyc76r4dcky7v3ansnbyqjzkbyyia0ir5zvqirzan0bnl1";
  })
  (fetchNuGet {
    name = "Microsoft.Win32.Primitives";
    version = "4.0.1";
    sha256 = "1n8ap0cmljbqskxpf8fjzn7kh1vvlndsa75k01qig26mbw97k2q7";
  })
  (fetchNuGet {
    name = "System.Net.NameResolution";
    version = "4.0.0";
    sha256 = "0dj3pvpv069nyia28gkl4a0fb7q33hbxz2dg25qvpah3l7pbl0qh";
  })
  (fetchNuGet {
    name = "System.AppContext";
    version = "4.1.0";
    sha256 = "0fv3cma1jp4vgj7a8hqc9n7hr1f1kjp541s6z0q1r6nazb4iz9mz";
  })
  (fetchNuGet {
    name = "System.Console";
    version = "4.0.0";
    sha256 = "0ynxqbc3z1nwbrc11hkkpw9skw116z4y9wjzn7id49p9yi7mzmlf";
  })
  (fetchNuGet {
    name = "System.Text.Encoding";
    version = "4.0.11";
    sha256 = "1dyqv0hijg265dwxg6l7aiv74102d6xjiwplh2ar1ly6xfaa4iiw";
  })
  (fetchNuGet {
    name = "Microsoft.CSharp";
    version = "4.0.1";
    sha256 = "0zxc0apx1gcx361jlq8smc9pfdgmyjh6hpka8dypc9w23nlsh6yj";
  })
  (fetchNuGet {
    name = "System.Xml.XPath.XmlDocument";
    version = "4.0.1";
    sha256 = "0l7yljgif41iv5g56l3nxy97hzzgck2a7rhnfnljhx9b0ry41bvc";
  })
  (fetchNuGet {
    name = "System.ComponentModel";
    version = "4.3.0";
    sha256 = "0986b10ww3nshy30x9sjyzm0jx339dkjxjj3401r3q0f6fx2wkcb";
  })
  (fetchNuGet {
    name = "System.Globalization.Calendars";
    version = "4.0.1";
    sha256 = "0bv0alrm2ck2zk3rz25lfyk9h42f3ywq77mx1syl6vvyncnpg4qh";
  })
  (fetchNuGet {
    name = "System.ComponentModel.Primitives";
    version = "4.3.0";
    sha256 = "1svfmcmgs0w0z9xdw2f2ps05rdxmkxxhf0l17xk9l1l8xfahkqr0";
  })
  (fetchNuGet {
    name = "System.IO.Compression";
    version = "4.1.0";
    sha256 = "0iym7s3jkl8n0vzm3jd6xqg9zjjjqni05x45dwxyjr2dy88hlgji";
  })
  (fetchNuGet {
    name = "System.Diagnostics.TraceSource";
    version = "4.0.0";
    sha256 = "1mc7r72xznczzf6mz62dm8xhdi14if1h8qgx353xvhz89qyxsa3h";
  })
  (fetchNuGet {
    name = "SshNet.Security.Cryptography";
    version = "1.2.0";
    sha256 = "1xlj8bjavpjk6lrkypk66cxpf2xa31wv73ymrk34d72f05z0xrg0";
  })
  (fetchNuGet {
    name = "AngleSharp";
    version = "0.9.11";
    sha256 = "17vf1bizskkxr8pf547lk2b48m12wv3si83gxk145i73bf9gi64a";
  })
  (fetchNuGet {
    name = "System.IO.Compression.ZipFile";
    version = "4.0.1";
    sha256 = "0h72znbagmgvswzr46mihn7xm7chfk2fhrp5krzkjf29pz0i6z82";
  })
  (fetchNuGet {
    name = "BTCPayServer.Lightning.Charge";
    version = "1.1.0.16";
    sha256 = "1x8rmpi4czrwj866kkcdzmjxrnc4vgs16xmmz580sjbh89lhhlzx";
  })
  (fetchNuGet {
    name = "System.Runtime.Serialization.Primitives";
    version = "4.1.1";
    sha256 = "042rfjixknlr6r10vx2pgf56yming8lkjikamg3g4v29ikk78h7k";
  })
  (fetchNuGet {
    name = "System.Runtime.InteropServices.RuntimeInformation";
    version = "4.0.0";
    sha256 = "0glmvarf3jz5xh22iy3w9v3wyragcm4hfdr17v90vs7vcrm7fgp6";
  })
  (fetchNuGet {
    name = "AWSSDK.S3";
    version = "3.3.18";
    sha256 = "1zjz524y0srncl1ncpddypx8qkbqz0pwxdc0w9ln8sbqviwhp9vz";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.DependencyInjection.Abstractions";
    version = "2.0.0";
    sha256 = "1pwrfh9b72k9rq6mb2jab5qhhi225d5rjalzkapiayggmygc8nhz";
  })
  (fetchNuGet {
    name = "System.Runtime.Numerics";
    version = "4.0.1";
    sha256 = "1y308zfvy0l5nrn46mqqr4wb4z1xk758pkk8svbz8b5ij7jnv4nn";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Abstractions";
    version = "2.0.0";
    sha256 = "1x5isi71z02khikzvm7vaschb006pqqrsv86ky1x08a4hir4s43h";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.DependencyModel";
    version = "1.0.3";
    sha256 = "1vclzbn8aq3wnvib34kr8g86gi37r6hn1ax9nc1sllid3h026irl";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Options";
    version = "2.0.0";
    sha256 = "0g4zadlg73f507krilhaaa7h0jdga216syrzjlyf5fdk25gxmjqh";
  })
  (fetchNuGet {
    name = "Microsoft.TestPlatform.ObjectModel";
    version = "16.0.1";
    sha256 = "1sv44px30zvwnmn18p0494i7g3r09bd4s2ci2k94pnx3y4k2mard";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Hosting.Abstractions";
    version = "2.0.0";
    sha256 = "056wgjcdzvz1qwb26xv6hgxq4xya56qiimhk30v8an8cgsrjk3mc";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Abstractions";
    version = "2.0.0";
    sha256 = "1ilz2yrgg9rbjyhn6a5zh9pr51nmh11z7sixb4p7vivgydj9gxwf";
  })
  (fetchNuGet {
    name = "xunit.abstractions";
    version = "2.0.3";
    sha256 = "00wl8qksgkxld76fgir3ycc5rjqv1sqds6x8yx40927q5py74gfh";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileProviders.Abstractions";
    version = "2.0.0";
    sha256 = "0d6y5isjy6jpf4w3f3w89cwh9p40glzhwvm7cwhx05wkqd8bk9w4";
  })
  (fetchNuGet {
    name = "System.Net.Primitives";
    version = "4.0.11";
    sha256 = "10xzzaynkzkakp7jai1ik3r805zrqjxiz7vcagchyxs2v26a516r";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Hosting.Server.Abstractions";
    version = "2.0.0";
    sha256 = "1k4dr6l32swi8zasfvzxixnjvgbrra7v6lgpri0929vb3r5lagjb";
  })
  (fetchNuGet {
    name = "System.Net.Http";
    version = "4.1.0";
    sha256 = "1i5rqij1icg05j8rrkw4gd4pgia1978mqhjzhsjg69lvwcdfg8yb";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Abstractions";
    version = "2.0.0";
    sha256 = "1hgmnd5mj35g8cqq3mdhjf9cmi3wm5lqiyrj5mgfscnig6i686xr";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Primitives";
    version = "1.1.1";
    sha256 = "0rcwxz1r89y96s8k3bmg0v6zdqanqfp09khy5l99wnl777y15g7x";
  })
  (fetchNuGet {
    name = "Google.Api.Gax.Rest";
    version = "2.2.1";
    sha256 = "1zkqd2gdwv8vmk1amnxdkj1m91c4q4wc779p2lps68lvap0x65c3";
  })
  (fetchNuGet {
    name = "Google.Apis.Storage.v1";
    version = "1.32.0.1035";
    sha256 = "1cs5iij760886j8yrq3i5azzlav7g1x6fzbbgd36q3vfycncgwfc";
  })
  (fetchNuGet {
    name = "System.Threading.Tasks.Extensions";
    version = "4.5.0";
    sha256 = "05mpkdc7aigwadlcc9q3ash88hygkyz5pmkj360jj6c6ffhm91s8";
  })
  (fetchNuGet {
    name = "System.ValueTuple";
    version = "4.5.0";
    sha256 = "00k8ja51d0f9wrq4vv5z2jhq8hy31kac2rg0rv06prylcybzl8cy";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Analyzers";
    version = "2.1.2";
    sha256 = "1rwpdxq46480k4l19j9qkgw2rkk43n24hqk7nhlrfk9gdvvzj5gl";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Caching.Memory";
    version = "2.1.1";
    sha256 = "1kkmsraddlmmrb5bfbxcnzdh7m92j0ngplh2af7vl5pdaq3fvw8y";
  })
  (fetchNuGet {
    name = "SQLitePCLRaw.lib.e_sqlite3.v110_xp";
    version = "1.1.11";
    sha256 = "1flhhrww5hwhjqmaahg77gar849r74vd62ifsi7v57iyihqsx2jq";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Features";
    version = "2.0.3";
    sha256 = "1ab0sp51qzgl0fd1n3ya0cwgjannck2b6vln54zysgjbvnq83559";
  })
  (fetchNuGet {
    name = "SQLitePCLRaw.lib.e_sqlite3.osx";
    version = "1.1.11";
    sha256 = "04gxazzph5c44zgac3skcjgal2hm764yni5pgivfnx1aznj3ggd2";
  })
  (fetchNuGet {
    name = "SQLitePCLRaw.lib.e_sqlite3.linux";
    version = "1.1.11";
    sha256 = "0d35xly96d5ggigm97mk9pirr80bgapxiirlpgmsk9ixj2v22xfs";
  })
  (fetchNuGet {
    name = "SQLitePCLRaw.provider.e_sqlite3.netstandard11";
    version = "1.1.11";
    sha256 = "102mmlam1gmck33xbn7273gps5cql22b1q8zkyq0svs8za4j0g4l";
  })
  (fetchNuGet {
    name = "SQLitePCLRaw.core";
    version = "1.1.11";
    sha256 = "10wqd8z3ykw10hg6kxd3zjwl5knla5am6c1p98fd7ia4b5dp5f58";
  })
  (fetchNuGet {
    name = "Microsoft.Data.Sqlite.Core";
    version = "2.1.0";
    sha256 = "0gx2lba8x5cysxwbybyh6zqvd55cqvbqn12h237v14896yxs1wgr";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Relational";
    version = "2.1.4";
    sha256 = "03dz7783z6lr6cl29bbccpcyzsp7pyyc1xdx0nzd1pp8qp5a2mzf";
  })
  (fetchNuGet {
    name = "CryptoHelper";
    version = "3.0.2";
    sha256 = "1pyd2w9blvwvv3jysy5njfqjdxndg25kk799awn3jvi8cvhlcx9r";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Caching.Memory";
    version = "2.0.0";
    sha256 = "0qvdhcqk8pi6g1ysh3a2b9jmmdq9fmcsj986azibnamnkszcvyfm";
  })
  (fetchNuGet {
    name = "Microsoft.CSharp";
    version = "4.4.0";
    sha256 = "1niyzqqfyhvh4zpxn8bcyyldynqlw0rfr1apwry4b3yrdnjh1hhh";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore";
    version = "2.0.0";
    sha256 = "17wncs3ygc8074nxsvi0979v42ljrr31r8zidxsb4m0sp3bg0czy";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.DependencyInjection";
    version = "2.1.0";
    sha256 = "1h30yw0fbjkb42jb5n291f3jns1f5g1asjaf9mjlgpy3k6x96gln";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.ResponseCaching.Abstractions";
    version = "2.1.0";
    sha256 = "097mxkx8sdj35yndwi8q4r4q5g8ds6hwrx7if1694zn9fmzqd424";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http";
    version = "2.1.0";
    sha256 = "1nrhbsr58fh6hpzxq75qvrimh0lk6pdwghs3cbv0f1zk90rar1cq";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Routing";
    version = "2.1.0";
    sha256 = "0xs89qbw2whzl46r7b549ys5bs6vrp2qf248cphfhwvjw1lv4bhs";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Hosting.Abstractions";
    version = "2.1.0";
    sha256 = "0sdzvjf6bz0krr2bm77zdyxpjcddadq2fqd3b4yybd6my3b5f7j2";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Core";
    version = "2.1.0";
    sha256 = "146q9zf8xmapxjpa3a84dy8r6b0k3vhm3bl13phnv6snww9hrff5";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authorization.Policy";
    version = "2.1.0";
    sha256 = "1inz9b8y4hn9gsfdp1zmqln4ms5zap44mwb6difvr2skwa78z59v";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Extensions";
    version = "2.1.0";
    sha256 = "14f1sg4p7zg1p4qj1xs0sjs5xwqidin843xdj9wlzy76sxy3066r";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Abstractions";
    version = "2.1.0";
    sha256 = "0p50d8bly48pv8kwsraw9aklppl9cav0lp1d6xjfpddr7jy2w2w8";
  })
  (fetchNuGet {
    name = "AspNet.Security.OAuth.Validation";
    version = "2.0.0";
    sha256 = "03iiw16i5cqss20vac14iqbjc0ym8mpmm0ayync1vsbvhs1lcl19";
  })
  (fetchNuGet {
    name = "System.ComponentModel.Annotations";
    version = "4.4.0";
    sha256 = "1c91pgj8vwjf4v0ss90bq63vmw2yr64qinria7blif3ml5c368lf";
  })
  (fetchNuGet {
    name = "System.Threading.Tasks.Extensions";
    version = "4.4.0";
    sha256 = "09d74a3i1rj2fgajf5hkfpipv94gsfp284xjazl2prkvn2rnq9nc";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Diagnostics.Abstractions";
    version = "2.0.0";
    sha256 = "1v9jhn5b97f10g5ch8vc82y318m2id5cvmvll9sq8ih8gsx6i4rh";
  })
  (fetchNuGet {
    name = "AspNet.Security.OpenIdConnect.Server";
    version = "2.0.0";
    sha256 = "1ainggb0vh648wzbp3xva1j553a94sihmzl3c74s9nv1hd8wch06";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Core";
    version = "2.0.0";
    sha256 = "0aqylidrkfnx3y9lw5ml6hvdasra06y3jqm5l7kvza8jxs9iivf2";
  })
  (fetchNuGet {
    name = "System.Security.Principal.Windows";
    version = "4.0.0";
    sha256 = "1d3vc8i0zss9z8p4qprls4gbh7q4218l9845kclx7wvw41809k6z";
  })
  (fetchNuGet {
    name = "System.Xml.XPath";
    version = "4.0.1";
    sha256 = "0fjqgb6y66d72d5n8qq1h213d9nv2vi8mpv8p28j3m9rccmsh04m";
  })
  (fetchNuGet {
    name = "AWSSDK.Core";
    version = "3.3.21.19";
    sha256 = "1i31fk1f75v5mmzfddb3m6wkgs5cqr5v3nnjg197pb2srr0wjql0";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Features";
    version = "2.0.0";
    sha256 = "1zk5ad3laa7ma83md8r80kijqzps6dcrvv0k1015nddfk1qd74s6";
  })
  (fetchNuGet {
    name = "System.Text.Encodings.Web";
    version = "4.4.0";
    sha256 = "05qp3yivh6gz0vva0v3wjlj3g1b45d5jmz362f2y8ah6yb3rx088";
  })
  (fetchNuGet {
    name = "System.Runtime.CompilerServices.Unsafe";
    version = "4.3.0";
    sha256 = "149xcsa1pphlrc2zfmca9n822g4mxk7s2a44phvf34r0fajm3hk8";
  })
  (fetchNuGet {
    name = "Google.Api.Gax";
    version = "2.2.1";
    sha256 = "0xf3rnhskfwax09n6hiy6v2vkh2adscdgdk6abs5pk96p69w4zcy";
  })
  (fetchNuGet {
    name = "Google.Apis.Auth";
    version = "1.30.0";
    sha256 = "0qvk265nxxsldqh87qqm38gnlvbgj6nws4snh45pr1z0bbj1v7ff";
  })
  (fetchNuGet {
    name = "Microsoft.DotNet.PlatformAbstractions";
    version = "1.0.3";
    sha256 = "1nayc88w80jrmnf3mkq0fk2bjhpgnk59m9yl40d9qfj06bzvckxl";
  })
  (fetchNuGet {
    name = "System.Reflection.Metadata";
    version = "1.3.0";
    sha256 = "1y5m6kryhjpqqm2g3h3b6bzig13wkiw954x3b7icqjm6xypm1x3b";
  })
  (fetchNuGet {
    name = "System.ComponentModel.TypeConverter";
    version = "4.1.0";
    sha256 = "178cva9p1cs043h5n2fry5xkzr3wc9n0hwbxa8m3ymld9m6wcv0y";
  })
  (fetchNuGet {
    name = "Google.Apis";
    version = "1.32.0";
    sha256 = "1590mwb0n19spdlj577h58qganp0jvn0q4s3749sff0z9m887c3w";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Process";
    version = "4.1.0";
    sha256 = "061lrcs7xribrmq7kab908lww6kn2xn1w3rdc41q189y0jibl19s";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Caching.Abstractions";
    version = "2.1.1";
    sha256 = "0z9ngpxkskcgs74aqwfj3yfzlkwlg3w68p01qc610v5ncm4nqjg3";
  })
  (fetchNuGet {
    name = "System.ComponentModel.EventBasedAsync";
    version = "4.0.11";
    sha256 = "07r5i7xwban347nsfw28hhjwpr78ywksjyhywvhj1yr0s7sr00wh";
  })
  (fetchNuGet {
    name = "System.Private.DataContractSerialization";
    version = "4.1.1";
    sha256 = "1xk9wvgzipssp1393nsg4n16zbr5481k03nkdlj954hzq5jkx89r";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore";
    version = "2.1.4";
    sha256 = "0y9wifcdh1n0vl5dypa91g5mvydramncw48qkmb72jh6qb1iqvfh";
  })
  (fetchNuGet {
    name = "System.Diagnostics.TextWriterTraceListener";
    version = "4.0.0";
    sha256 = "1xigiwkwyxak0dhm0p8i2zb7a9syly9cdb5s9zkr9rbad4f2fqhs";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Cryptography.KeyDerivation";
    version = "2.0.1";
    sha256 = "1jv80zihg28jw7kr49hscgy910h419rqgphjdmcy5zx8pcaxmvk0";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Caching.Abstractions";
    version = "2.0.0";
    sha256 = "1af64clax8q94p5vggwv8b9qiddmi8v9lnfvbc33k4rl5q8lq38j";
  })
  (fetchNuGet {
    name = "System.Runtime.Loader";
    version = "4.0.0";
    sha256 = "0lpfi3psqcp6zxsjk2qyahal7zaawviimc8lhrlswhip2mx7ykl0";
  })
  (fetchNuGet {
    name = "System.Runtime.Serialization.Json";
    version = "4.0.2";
    sha256 = "08ypbzs0sb302ga04ds5b2wxa2gg0q50zpa0nvc87ipjhs0v66dn";
  })
  (fetchNuGet {
    name = "System.Diagnostics.DiagnosticSource";
    version = "4.4.1";
    sha256 = "135xgv5rwmzi9girb8abnp1xradwy2w3n96j2az7v8j694z3znmi";
  })
  (fetchNuGet {
    name = "System.Collections.Immutable";
    version = "1.4.0";
    sha256 = "14zwxm2xkp19j0m3xp7p25sbndhlak9g2z19kgl6md2zqkqidjkh";
  })
  (fetchNuGet {
    name = "Remotion.Linq";
    version = "2.1.1";
    sha256 = "1gj86rj03zxjy04hkchkijh95cys0wf5mpmjldrjfbz8yr41xfnw";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.DependencyInjection.Abstractions";
    version = "2.1.0";
    sha256 = "0c0cx8r5xkjpxmcfp51959jnp55qjvq28d9vaslk08avvi1by12s";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.ObjectPool";
    version = "2.1.0";
    sha256 = "0i0vmfc3ch7xa3awmbw3byylprfl2d6dp7lgm8k8f215kxzl1wdn";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.WebUtilities";
    version = "2.1.0";
    sha256 = "148snpiq4rhm44gzx8wn9ljfb286h7vd1axc9by4r4fxp0gix0kf";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Options";
    version = "2.1.0";
    sha256 = "0w9644sryd1c6r3n4lq2cgd5pn6jl3k5m38a05m7vjffa4m2spd2";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Abstractions";
    version = "2.1.0";
    sha256 = "0jz5w1y661cxbh1sakyjh0813sqrc456mj53w3482ilb5xh5zhbf";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication";
    version = "2.0.0";
    sha256 = "0adjs6i1i5wr3wlmghfzf6z6zi77fkcaka2lmzw0knhxqmimf5p0";
  })
  (fetchNuGet {
    name = "AspNet.Security.OpenIdConnect.Extensions";
    version = "2.0.0";
    sha256 = "0wvl38q16zyir63af75rikfgkz6qcc31vz21dfpwx6m4ngynyj73";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Protocols.OpenIdConnect";
    version = "5.2.1";
    sha256 = "0k4ya7qplslmvbviwi36dvq56ddjvqnfbywmnlzhw43p7jkds3dk";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Extensions";
    version = "2.0.0";
    sha256 = "1wzxmkpv7ph7i0k996phfw7hcm1zdyiqhjw7ya86hzwlfliiwp7k";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http";
    version = "2.0.0";
    sha256 = "1gkidkml8bnk7iimqwlx29nrhkclrnkail6q3x8fr07rl9mvbx67";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Core";
    version = "2.0.0";
    sha256 = "1nbb2f2n68y18nm5bzsyp2n2dg1g1lq8sik86f4c2q1h9pi8caqm";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.ResponseCaching.Abstractions";
    version = "2.0.0";
    sha256 = "1pkrrizbvx67jfpn2m4zk56prkmrywj7i03wy4idxs1jqc7md3kb";
  })
  (fetchNuGet {
    name = "System.Security.Principal";
    version = "4.0.1";
    sha256 = "1nbzdfqvzzbgsfdd5qsh94d7dbg2v4sw0yx6himyn52zf8z6007p";
  })
  (fetchNuGet {
    name = "System.Security.Claims";
    version = "4.0.1";
    sha256 = "03dw0ls49bvsrffgwycyifjgz0qzr9r85skqhdyhfd51fqf398n6";
  })
  (fetchNuGet {
    name = "System.Collections.Immutable";
    version = "1.2.0";
    sha256 = "1jm4pc666yiy7af1mcf7766v710gp0h40p228ghj6bavx7xfa38m";
  })
  (fetchNuGet {
    name = "System.Collections.NonGeneric";
    version = "4.0.1";
    sha256 = "19994r5y5bpdhj7di6w047apvil8lh06lh2c2yv9zc4fc5g9bl4d";
  })
  (fetchNuGet {
    name = "System.ComponentModel";
    version = "4.0.1";
    sha256 = "0v4qpmqlzyfad2kswxxj2frnaqqhz9201c3yn8fmmarx5vlzg52z";
  })
  (fetchNuGet {
    name = "System.Collections.Specialized";
    version = "4.0.1";
    sha256 = "1wbv7y686p5x169rnaim7sln67ivmv6r57falrnx8aap9y33mam9";
  })
  (fetchNuGet {
    name = "System.ComponentModel.Primitives";
    version = "4.1.0";
    sha256 = "0wb5mnaag0w4fnyc40x19j8v2vshxp266razw64bcqfyj1whb1q0";
  })
  (fetchNuGet {
    name = "Microsoft.Win32.Registry";
    version = "4.0.0";
    sha256 = "1spf4m9pikkc19544p29a47qnhcd885klncahz133hbnyqbkmz9k";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.DotNetAppHost";
    version = "2.0.0";
    sha256 = "0yixdk1rslbznrl50d6pyhg50xxr6jbfb1qpy2yd8xv44s4shgwd";
  })
  (fetchNuGet {
    name = "System.Threading.Overlapped";
    version = "4.0.1";
    sha256 = "0fi79az3vmqdp9mv3wh2phblfjls89zlj6p9nc3i9f6wmfarj188";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.DotNetHostResolver";
    version = "2.0.0";
    sha256 = "0xy45xqmdqz7r6v0g8m7c1rp761ghavjl8nzxiyrpbp0wccxl3xb";
  })
  (fetchNuGet {
    name = "System.IO.Pipes";
    version = "4.0.0";
    sha256 = "0fxfvcf55s9q8zsykwh8dkq2xb5jcqnml2ycq8srfry2l07h18za";
  })
  (fetchNuGet {
    name = "System.Threading.Tasks.Dataflow";
    version = "4.6.0";
    sha256 = "0a1davr71wssyn4z1hr75lk82wqa0daz0vfwkmg1fm3kckfd72k1";
  })
  (fetchNuGet {
    name = "System.Diagnostics.FileVersionInfo";
    version = "4.0.0";
    sha256 = "1s5vxhy7i09bmw51kxqaiz9zaj9am8wsjyz13j85sp23z267hbv3";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Contracts";
    version = "4.0.1";
    sha256 = "0y6dkd9n5k98vzhc3w14r2pbhf10qjn2axpghpmfr6rlxx9qrb9j";
  })
  (fetchNuGet {
    name = "System.Runtime.Serialization.Xml";
    version = "4.1.1";
    sha256 = "11747an5gbz821pwahaim3v82gghshnj9b5c4cw539xg5a3gq7rk";
  })
  (fetchNuGet {
    name = "System.Resources.Writer";
    version = "4.0.0";
    sha256 = "07hp218kjdcvpl27djspnixgnacbp9apma61zz3wsca9fx5g3lmv";
  })
  (fetchNuGet {
    name = "System.Linq.Parallel";
    version = "4.0.1";
    sha256 = "0i33x9f4h3yq26yvv6xnq4b0v51rl5z8v1bm7vk972h5lvf4apad";
  })
  (fetchNuGet {
    name = "System.Resources.Reader";
    version = "4.0.0";
    sha256 = "1jafi73dcf1lalrir46manq3iy6xnxk2z7gpdpwg4wqql7dv3ril";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.DotNetHostPolicy";
    version = "2.0.0";
    sha256 = "1zz9yfzcvcai4il78s3phjp1hryib2zk3w2r16v3fxm2yllssyaf";
  })
  (fetchNuGet {
    name = "NETStandard.Library";
    version = "2.0.0";
    sha256 = "1bc4ba8ahgk15m8k4nd7x406nhi0kwqzbgjk2dmw52ss553xz7iy";
  })
  (fetchNuGet {
    name = "Microsoft.Build";
    version = "15.3.409";
    sha256 = "0vzq6csp2yys9s96c7i37bjml439rdi47g8f5rzqdr7xf5a1jk81";
  })
  (fetchNuGet {
    name = "System.Text.Encoding.CodePages";
    version = "4.0.1";
    sha256 = "00wpm3b9y0k996rm9whxprngm8l500ajmzgy2ip9pgwk0icp06y3";
  })
  (fetchNuGet {
    name = "Microsoft.Build.Utilities.Core";
    version = "15.3.409";
    sha256 = "1p8a0l9sxmjj86qha748qjw2s2n07q8mn41mj5r6apjnwl27ywnf";
  })
  (fetchNuGet {
    name = "Microsoft.VisualStudio.Web.CodeGeneration.Tools";
    version = "2.0.0";
    sha256 = "1a8b5hr6n1wp6k3jx4kpdw7ygmcqjjjbc725srgbfi15zy5a2fwj";
  })
  (fetchNuGet {
    name = "Microsoft.VisualStudio.Web.CodeGeneration.Contracts";
    version = "2.0.0";
    sha256 = "07xhgyv80zcmnng1hci1nj8mrpxjsnljbj9zissylck7c0jylji9";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileProviders.Physical";
    version = "2.0.0";
    sha256 = "0l0l92g7sq4122n139av1pn1jl6wlw92hjmdnr47xdss0ndmwrs3";
  })
  (fetchNuGet {
    name = "Microsoft.Build.Runtime";
    version = "15.3.409";
    sha256 = "135ycnqz5jfg61y5zaapgc7xdpjx2aq4icmxb9ph7h5inl445q7q";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.App";
    version = "2.0.0";
    sha256 = "0j8xkssrashyxrmdraci6kmj2gdrdxb0z61jwnzf1r9r2kqrd7d2";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileSystemGlobbing";
    version = "2.0.0";
    sha256 = "02lzy6r14ghwfwm384xajq08vv3pl3ww0mi5isrr10vivhijhgg4";
  })
]

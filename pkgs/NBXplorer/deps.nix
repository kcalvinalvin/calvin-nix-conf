{ fetchurl }: let
  fetchNuGet = { name, version, sha256 }: fetchurl {
    inherit sha256;
    url = "https://www.nuget.org/api/v2/package/${name}/${version}";
  };
in [
  (fetchNuGet {
    name = "System.Numerics.Vectors";
    version = "4.4.0";
    sha256 = "0rdvma399070b0i46c4qq1h2yvjj3k013sqzkilz4bz5cwmx1rba";
  })
  (fetchNuGet {
    name = "System.Buffers";
    version = "4.4.0";
    sha256 = "183f8063w8zqn99pv0ni0nnwh7fgx46qzxamwnans55hhs2l0g19";
  })
  (fetchNuGet {
    name = "System.Memory";
    version = "4.5.0";
    sha256 = "1layqpcx1q4l805fdnj2dfqp6ncx2z42ca06rgsr6ikq4jjgbv30";
  })
  (fetchNuGet {
    name = "System.Runtime.CompilerServices.Unsafe";
    version = "4.5.0";
    sha256 = "17labczwqk3jng3kkky73m0jhi8wc21vbl7cz5c0hj2p1dswin43";
  })
  (fetchNuGet {
    name = "System.Text.Encoding";
    version = "4.0.11";
    sha256 = "1dyqv0hijg265dwxg6l7aiv74102d6xjiwplh2ar1ly6xfaa4iiw";
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
    name = "Microsoft.Extensions.Primitives";
    version = "2.1.0";
    sha256 = "1r9gzwdfmb8ysnc4nzmyz5cyar1lw0qmizsvrsh252nhlyg06nmb";
  })
  (fetchNuGet {
    name = "runtime.debian.8-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "0rwpqngkqiapqc5c2cpkj7idhngrgss5qpnqg0yh40mbyflcxf8i";
  })
  (fetchNuGet {
    name = "runtime.opensuse.13.2-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "096ch4n4s8k82xga80lfmpimpzahd2ip1mgwdqgar0ywbbl6x438";
  })
  (fetchNuGet {
    name = "runtime.rhel.7-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "1cpx56mcfxz7cpn57wvj18sjisvzq8b5vd9rw16ihd2i6mcp3wa1";
  })
  (fetchNuGet {
    name = "runtime.osx.10.10-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "1m9z1k9kzva9n9kwinqxl97x2vgl79qhqjlv17k9s2ymcyv2bwr6";
  })
  (fetchNuGet {
    name = "runtime.ubuntu.16.10-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "1x0g58pbpjrmj2x2qw17rdwwnrcl0wvim2hdwz48lixvwvp22n9c";
  })
  (fetchNuGet {
    name = "runtime.opensuse.42.1-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "1dm8fifl7rf1gy7lnwln78ch4rw54g0pl5g1c189vawavll7p6rj";
  })
  (fetchNuGet {
    name = "runtime.ubuntu.14.04-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "15gsm1a8jdmgmf8j5v1slfz8ks124nfdhk2vxs2rw3asrxalg8hi";
  })
  (fetchNuGet {
    name = "runtime.fedora.23-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "1n06gxwlinhs0w7s8a94r1q3lwqzvynxwd3mp10ws9bg6gck8n4r";
  })
  (fetchNuGet {
    name = "runtime.fedora.24-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "0404wqrc7f2yc0wxv71y3nnybvqx8v4j9d47hlscxy759a525mc3";
  })
  (fetchNuGet {
    name = "NETStandard.Library";
    version = "2.0.3";
    sha256 = "1fn9fxppfcg4jgypp2pmrpr6awl3qz1xmnri0cygpkwvyx27df1y";
  })
  (fetchNuGet {
    name = "NBitcoin.Altcoins";
    version = "1.0.2.6";
    sha256 = "0s7xblvypxjn8pig4ifdi8lpss30vcvcn5hcdf93a98galavkwl1";
  })
  (fetchNuGet {
    name = "runtime.ubuntu.16.04-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "0q0n5q1r1wnqmr5i5idsrd9ywl33k0js4pngkwq9p368mbxp8x1w";
  })
  (fetchNuGet {
    name = "NicolasDorier.StandardConfiguration";
    version = "1.0.0.18";
    sha256 = "0lgssxafv6cqlw21fb79fm0fcln0clgsk6zadcwrnjv9vampfw7b";
  })
  (fetchNuGet {
    name = "System.Runtime.Handles";
    version = "4.0.1";
    sha256 = "1g0zrdi5508v49pfm3iii2hn6nm00bgvfpjq1zxknfjrxxa20r4g";
  })
  (fetchNuGet {
    name = "System.Net.WebSockets.Client";
    version = "4.3.2";
    sha256 = "103y8lfsfa5xd1sqmq9sml4qyp4rij2i3fnnw119h119hb04l0rk";
  })
  (fetchNuGet {
    name = "NBitcoin";
    version = "4.1.2.35";
    sha256 = "0x47d4dq0sxb29m9fqz627gzaap227r6i6vpvyfnfr17y8g5cjns";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.Platforms";
    version = "1.1.0";
    sha256 = "08vh1r12g6ykjygq5d3vq09zylgb84l63k49jc4v8faw9g93iqqm";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Abstractions";
    version = "2.1.0";
    sha256 = "1gvgif1wcx4k6pv7gc00qv1hid945jdywy1s50s33q0hfd91hbnj";
  })
  (fetchNuGet {
    name = "NicolasDorier.CommandLine.Configuration";
    version = "1.0.0.3";
    sha256 = "0al0pd4zhjpmn8m208xjmy17cbyab68grzdvzr2lhsckwkl6b1jg";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.EnvironmentVariables";
    version = "2.1.0";
    sha256 = "0xx3idb1l5y1da5zynlys5gyarijmw5pc9hgci8xdxbrcv6rzbjb";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Ini";
    version = "2.1.0";
    sha256 = "0bchsljywcq36si4zs2dcx2gj8x98ww93dh2bx2z6x5ilxyjnfip";
  })
  (fetchNuGet {
    name = "Microsoft.Win32.Primitives";
    version = "4.3.0";
    sha256 = "0j0c1wj4ndj21zsgivsc24whiya605603kxrbiw6wkfdync464wq";
  })
  (fetchNuGet {
    name = "System.Collections";
    version = "4.3.0";
    sha256 = "19r4y64dqyrq6k4706dnyhhw7fs24kpp3awak7whzss39dakpxk9";
  })
  (fetchNuGet {
    name = "System.IO";
    version = "4.1.0";
    sha256 = "1g0yb8p11vfd0kbkyzlfsbsp5z44lwsvyc0h3dpw6vqnbi035ajp";
  })
  (fetchNuGet {
    name = "System.IO";
    version = "4.3.0";
    sha256 = "05l9qdrzhm4s5dixmx68kxwif4l99ll5gqmh7rqgw554fx0agv5f";
  })
  (fetchNuGet {
    name = "System.Net.Sockets";
    version = "4.3.0";
    sha256 = "1ssa65k6chcgi6mfmzrznvqaxk8jp0gvl77xhf1hbzakjnpxspla";
  })
  (fetchNuGet {
    name = "System.Globalization";
    version = "4.3.0";
    sha256 = "1cp68vv683n6ic2zqh2s1fn4c2sd87g5hpp6l4d4nj4536jz98ki";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Debug";
    version = "4.3.0";
    sha256 = "00yjlf19wjydyr6cfviaph3vsjzg3d5nvnya26i2fvfg53sknh3y";
  })
  (fetchNuGet {
    name = "System.Threading.Timer";
    version = "4.3.0";
    sha256 = "1nx773nsx6z5whv8kaa1wjh037id2f1cxhb69pvgv12hd2b6qs56";
  })
  (fetchNuGet {
    name = "System.Net.WebHeaderCollection";
    version = "4.3.0";
    sha256 = "0ms3ddjv1wn8sqa5qchm245f3vzzif6l6fx5k92klqpn7zf4z562";
  })
  (fetchNuGet {
    name = "System.Runtime.Handles";
    version = "4.3.0";
    sha256 = "0sw2gfj2xr7sw9qjn0j3l9yw07x73lcs97p8xfc9w1x9h5g5m7i8";
  })
  (fetchNuGet {
    name = "System.Text.Encoding";
    version = "4.3.0";
    sha256 = "1f04lkir4iladpp51sdgmis9dj4y8v08cka0mbmsy0frc9a4gjqr";
  })
  (fetchNuGet {
    name = "System.Text.Encoding.Extensions";
    version = "4.3.0";
    sha256 = "11q1y8hh5hrp5a3kw25cb6l00v5l5dvirkz8jr3sq00h1xgcgrxy";
  })
  (fetchNuGet {
    name = "System.Reflection.Primitives";
    version = "4.0.1";
    sha256 = "1bangaabhsl4k9fg8khn83wm6yial8ik1sza7401621jc6jrym28";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Tracing";
    version = "4.3.0";
    sha256 = "1m3bx6c2s958qligl67q7grkwfz3w53hpy7nc97mh6f7j5k168c4";
  })
  (fetchNuGet {
    name = "System.Threading";
    version = "4.0.11";
    sha256 = "19x946h926bzvbsgj28csn46gak2crv2skpwsx80hbgazmkgb1ls";
  })
  (fetchNuGet {
    name = "System.Net.Security";
    version = "4.3.0";
    sha256 = "1aa5igz31ivk6kpgsrwck3jccab7wd88wr52lddmgypmbh9mmf87";
  })
  (fetchNuGet {
    name = "System.Resources.ResourceManager";
    version = "4.3.0";
    sha256 = "0sjqlzsryb0mg4y4xzf35xi523s4is4hz9q4qgdvlvgivl7qxn49";
  })
  (fetchNuGet {
    name = "System.Net.NameResolution";
    version = "4.3.0";
    sha256 = "15r75pwc0rm3vvwsn8rvm2krf929mjfwliv0mpicjnii24470rkq";
  })
  (fetchNuGet {
    name = "System.Threading";
    version = "4.3.0";
    sha256 = "0rw9wfamvhayp5zh3j7p1yfmx9b5khbf4q50d8k5rk993rskfd34";
  })
  (fetchNuGet {
    name = "System.Net.WebSockets";
    version = "4.3.0";
    sha256 = "1gfj800078kggcgl0xyl00a6y5k4wwh2k2qm69rjy22wbmq7fy4p";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Algorithms";
    version = "4.3.0";
    sha256 = "03sq183pfl5kp7gkvq77myv7kbpdnq3y0xj7vi4q1kaw54sny0ml";
  })
  (fetchNuGet {
    name = "System.Runtime.Extensions";
    version = "4.3.0";
    sha256 = "1ykp3dnhwvm48nap8q23893hagf665k0kn3cbgsqpwzbijdcgc60";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.X509Certificates";
    version = "4.3.0";
    sha256 = "0valjcz5wksbvijylxijjxb1mp38mdhv03r533vnx1q3ikzdav9h";
  })
  (fetchNuGet {
    name = "System.Threading.Tasks";
    version = "4.0.11";
    sha256 = "0nr1r41rak82qfa5m0lhk9mp0k93bvfd7bbd9sdzwx9mb36g28p5";
  })
  (fetchNuGet {
    name = "System.Threading.Tasks";
    version = "4.3.0";
    sha256 = "134z3v9abw3a6jsw17xl3f6hqjpak5l682k2vz39spj4kmydg6k7";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Primitives";
    version = "4.3.0";
    sha256 = "0pyzncsv48zwly3lw4f2dayqswcfvdwq2nz0dgwmi7fj3pn64wby";
  })
  (fetchNuGet {
    name = "System.Net.Primitives";
    version = "4.3.0";
    sha256 = "0c87k50rmdgmxx7df2khd9qj7q35j9rzdmm2572cc55dygmdk3ii";
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
    name = "System.Diagnostics.Tracing";
    version = "4.1.0";
    sha256 = "1d2r76v1x610x61ahfpigda89gd13qydz6vbwzhpqlyvq8jj6394";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Abstractions";
    version = "1.0.2";
    sha256 = "08hxkx80rsq45r66nnf9r35yas6f7iyzki2sl7874nb0mmdmcz4c";
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
    name = "NicolasDorier.CommandLine";
    version = "1.0.0.2";
    sha256 = "08a9l18zkhcfa6f56xqylzvmqjzgxsmgkpm2r3ckvxfyml6w0qyy";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration";
    version = "2.1.0";
    sha256 = "04rjl38wlr1jjjpbzgf64jp0ql6sbzbil0brwq9mgr3hdgwd7vx2";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.FileExtensions";
    version = "2.1.0";
    sha256 = "1lz2xwm63clbh9dfhmygbqvcp4dsrwh5jihv82dmqd5h7lqngl40";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.Targets";
    version = "1.1.0";
    sha256 = "193xwf33fbm0ni3idxzbr5fdq3i2dlfgihsac9jj7whj0gd902nh";
  })
  (fetchNuGet {
    name = "runtime.native.System";
    version = "4.3.0";
    sha256 = "15hgf6zaq9b8br2wi1i3x0zvmk410nlmsmva9p0bbg73v6hml5k4";
  })
  (fetchNuGet {
    name = "runtime.native.System.Net.Security";
    version = "4.3.0";
    sha256 = "0dnqjhw445ay3chpia9p6vy4w2j6s9vy3hxszqvdanpvvyaxijr3";
  })
  (fetchNuGet {
    name = "System.Runtime";
    version = "4.1.0";
    sha256 = "02hdkgk13rvsd6r9yafbwzss8kr55wnj8d5c7xjnp8gqrwc8sn0m";
  })
  (fetchNuGet {
    name = "System.Threading.ThreadPool";
    version = "4.3.0";
    sha256 = "027s1f4sbx0y1xqw2irqn6x161lzj8qwvnh2gn78ciiczdv10vf1";
  })
  (fetchNuGet {
    name = "System.Security.Claims";
    version = "4.3.0";
    sha256 = "0jvfn7j22l3mm28qjy3rcw287y9h65ha4m940waaxah07jnbzrhn";
  })
  (fetchNuGet {
    name = "System.Globalization.Extensions";
    version = "4.3.0";
    sha256 = "02a5zfxavhv3jd437bsncbhd2fp1zv4gxzakp1an9l6kdq1mcqls";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.OpenSsl";
    version = "4.3.0";
    sha256 = "0givpvvj8yc7gv4lhb6s1prq6p2c4147204a0wib89inqzd87gqc";
  })
  (fetchNuGet {
    name = "System.Security.Principal";
    version = "4.3.0";
    sha256 = "12cm2zws06z4lfc4dn31iqv7072zyi4m910d4r6wm8yx85arsfxf";
  })
  (fetchNuGet {
    name = "runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.0";
    sha256 = "18pzfdlwsg2nb1jjjjzyb5qlgy6xjxzmhnfaijq5s2jw3cm3ab97";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Encoding";
    version = "4.3.0";
    sha256 = "1jr6w70igqn07k5zs1ph6xja97hxnb3mqbspdrff6cvssgrixs32";
  })
  (fetchNuGet {
    name = "System.Collections.Concurrent";
    version = "4.3.0";
    sha256 = "0wi10md9aq33jrkh2c24wr2n9hrpyamsdhsxdcnf43b7y86kkii8";
  })
  (fetchNuGet {
    name = "System.Reflection";
    version = "4.3.0";
    sha256 = "0xl55k0mw8cd8ra6dxzh974nxif58s3k1rjv1vbd7gjbjr39j11m";
  })
  (fetchNuGet {
    name = "System.Security.Principal.Windows";
    version = "4.3.0";
    sha256 = "00a0a7c40i3v4cb20s2cmh9csb5jv2l0frvnlzyfxh848xalpdwr";
  })
  (fetchNuGet {
    name = "System.Runtime.Numerics";
    version = "4.3.0";
    sha256 = "19rav39sr5dky7afygh309qamqqmi9kcwvz3i0c5700v0c5cg61z";
  })
  (fetchNuGet {
    name = "runtime.native.System.Security.Cryptography.Apple";
    version = "4.3.0";
    sha256 = "1b61p6gw1m02cc1ry996fl49liiwky6181dzr873g9ds92zl326q";
  })
  (fetchNuGet {
    name = "runtime.native.System.Net.Http";
    version = "4.3.0";
    sha256 = "1n6rgz5132lcibbch1qlf0g9jk60r0kqv087hxc0lisy50zpm7kk";
  })
  (fetchNuGet {
    name = "System.Globalization.Calendars";
    version = "4.3.0";
    sha256 = "1xwl230bkakzzkrggy1l1lxmm3xlhk4bq2pkv790j5lm8g887lxq";
  })
  (fetchNuGet {
    name = "System.IO.FileSystem";
    version = "4.3.0";
    sha256 = "0z2dfrbra9i6y16mm9v1v6k47f0fm617vlb7s5iybjjsz6g1ilmw";
  })
  (fetchNuGet {
    name = "System.IO.FileSystem.Primitives";
    version = "4.3.0";
    sha256 = "0j6ndgglcf4brg2lz4wzsh1av1gh8xrzdsn9f0yznskhqn1xzj9c";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Csp";
    version = "4.3.0";
    sha256 = "1x5wcrddf2s3hb8j78cry7yalca4lb5vfnkrysagbn6r9x6xvrx1";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Cng";
    version = "4.3.0";
    sha256 = "1k468aswafdgf56ab6yrn7649kfqx2wm9aslywjam1hdmk5yypmv";
  })
  (fetchNuGet {
    name = "System.Reflection.Primitives";
    version = "4.3.0";
    sha256 = "04xqa33bld78yv5r93a8n76shvc8wwcdgr1qvvjh959g3rc31276";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Debug";
    version = "4.0.11";
    sha256 = "0gmjghrqmlgzxivd2xl50ncbglb7ljzb66rlx8ws6dv8jm0d5siz";
  })
  (fetchNuGet {
    name = "System.Linq";
    version = "4.1.0";
    sha256 = "1ppg83svb39hj4hpp5k7kcryzrf3sfnm08vxd5sm2drrijsla2k5";
  })
  (fetchNuGet {
    name = "System.Resources.ResourceManager";
    version = "4.0.1";
    sha256 = "0b4i7mncaf8cnai85jv3wnw6hps140cxz8vylv2bik6wyzgvz7bi";
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
    name = "System.Globalization";
    version = "4.0.11";
    sha256 = "070c5jbas2v7smm660zaf1gh0489xanjqymkvafcs4f8cdrs1d5d";
  })
  (fetchNuGet {
    name = "System.Reflection";
    version = "4.1.0";
    sha256 = "1js89429pfw79mxvbzp8p3q93il6rdff332hddhzi5wqglc4gml9";
  })
  (fetchNuGet {
    name = "System.Runtime.Extensions";
    version = "4.1.0";
    sha256 = "0rw4rm4vsm3h3szxp9iijc3ksyviwsv6f63dng3vhqyg4vjdkc2z";
  })
  (fetchNuGet {
    name = "System.Runtime.InteropServices";
    version = "4.1.0";
    sha256 = "01kxqppx3dr3b6b286xafqilv4s2n0gqvfgzfd4z943ga9i81is1";
  })
  (fetchNuGet {
    name = "runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.2";
    sha256 = "0zy5r25jppz48i2bkg8b9lfig24xixg6nm3xyr1379zdnqnpm8f6";
  })
  (fetchNuGet {
    name = "System.Diagnostics.DiagnosticSource";
    version = "4.3.0";
    sha256 = "0z6m3pbiy0qw6rn3n209rrzf9x1k4002zh90vwcrsym09ipm2liq";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Abstractions";
    version = "2.1.0";
    sha256 = "03gzlr3z9j1xnr1k6y91zgxpz3pj27i3zsvjwj7i8jqnlqmk7pxd";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileProviders.Physical";
    version = "2.1.0";
    sha256 = "1firpsl5bk219i9gdfgiqw1zm68146h1dzx9hvawfpw9slfaa56w";
  })
  (fetchNuGet {
    name = "runtime.opensuse.42.1-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.0";
    sha256 = "1klrs545awhayryma6l7g2pvnp9xy4z0r1i40r80zb45q3i9nbyf";
  })
  (fetchNuGet {
    name = "runtime.rhel.7-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.0";
    sha256 = "0vhynn79ih7hw7cwjazn87rm9z9fj0rvxgzlab36jybgcpcgphsn";
  })
  (fetchNuGet {
    name = "runtime.ubuntu.14.04-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.0";
    sha256 = "160p68l2c7cqmyqjwxydcvgw7lvl1cr0znkw8fp24d1by9mqc8p3";
  })
  (fetchNuGet {
    name = "runtime.debian.8-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.0";
    sha256 = "16rnxzpk5dpbbl1x354yrlsbvwylrq456xzpsha1n9y3glnhyx9d";
  })
  (fetchNuGet {
    name = "runtime.fedora.24-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.0";
    sha256 = "0c2p354hjx58xhhz7wv6div8xpi90sc6ibdm40qin21bvi7ymcaa";
  })
  (fetchNuGet {
    name = "runtime.osx.10.10-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.0";
    sha256 = "0zcxjv5pckplvkg0r6mw3asggm7aqzbdjimhvsasb0cgm59x09l3";
  })
  (fetchNuGet {
    name = "runtime.fedora.23-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.0";
    sha256 = "0hkg03sgm2wyq8nqk6dbm9jh5vcq57ry42lkqdmfklrw89lsmr59";
  })
  (fetchNuGet {
    name = "runtime.opensuse.13.2-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.0";
    sha256 = "0qyynf9nz5i7pc26cwhgi8j62ps27sqmf78ijcfgzab50z9g8ay3";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.Platforms";
    version = "1.0.1";
    sha256 = "01al6cfxp68dscl15z7rxfw9zvhm64dncsw09a1vmdkacsa2v6lr";
  })
  (fetchNuGet {
    name = "runtime.ubuntu.16.10-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.0";
    sha256 = "1p4dgxax6p7rlgj4q73k73rslcnz4wdcv8q2flg1s8ygwcm58ld5";
  })
  (fetchNuGet {
    name = "runtime.ubuntu.16.04-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    version = "4.3.0";
    sha256 = "15zrc8fgd8zx28hdghcj5f5i34wf3l6bq5177075m2bc2j34jrqy";
  })
  (fetchNuGet {
    name = "System.Linq";
    version = "4.3.0";
    sha256 = "1w0gmba695rbr80l1k2h4mrwzbzsyfl2z4klmpbsvsg5pm4a56s7";
  })
  (fetchNuGet {
    name = "runtime.osx.10.10-x64.runtime.native.System.Security.Cryptography.Apple";
    version = "4.3.0";
    sha256 = "10yc8jdrwgcl44b4g93f1ds76b176bajd3zqi2faf5rvh1vy9smi";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.Targets";
    version = "1.0.1";
    sha256 = "0ppdkwy6s9p7x9jix3v4402wb171cdiibq7js7i13nxpdky7074p";
  })
  (fetchNuGet {
    name = "runtime.win-x64.runtime.native.System.Data.SqlClient.sni";
    version = "4.4.0";
    sha256 = "0167s4mpq8bzk3y11pylnynzjr2nc84w96al9x4l8yrf34ccm18y";
  })
  (fetchNuGet {
    name = "runtime.win-arm64.runtime.native.System.Data.SqlClient.sni";
    version = "4.4.0";
    sha256 = "07byf1iyqb7jkb17sp0mmjk46fwq6fx8mlpzywxl7qk09sma44gk";
  })
  (fetchNuGet {
    name = "runtime.win-x86.runtime.native.System.Data.SqlClient.sni";
    version = "4.4.0";
    sha256 = "0k3rkfrlm9jjz56dra61jgxinb8zsqlqzik2sjwz7f8v6z6ddycc";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Logging";
    version = "5.2.0";
    sha256 = "0wmgc841l6v13p9ys0b43fq89j6b46g8jav0lp6lpckywn97mfqf";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Contracts";
    version = "4.3.0";
    sha256 = "1gxawcr4d2y5jmc6y7iv8c1q83hm22f6savcvspvhmpl974jigib";
  })
  (fetchNuGet {
    name = "System.Xml.XPath";
    version = "4.3.0";
    sha256 = "1cv2m0p70774a0sd1zxc8fm8jk3i5zk2bla3riqvi8gsm0r4kpci";
  })
  (fetchNuGet {
    name = "Microsoft.CSharp";
    version = "4.0.1";
    sha256 = "0zxc0apx1gcx361jlq8smc9pfdgmyjh6hpka8dypc9w23nlsh6yj";
  })
  (fetchNuGet {
    name = "System.ComponentModel.Primitives";
    version = "4.3.0";
    sha256 = "1svfmcmgs0w0z9xdw2f2ps05rdxmkxxhf0l17xk9l1l8xfahkqr0";
  })
  (fetchNuGet {
    name = "System.ComponentModel";
    version = "4.3.0";
    sha256 = "0986b10ww3nshy30x9sjyzm0jx339dkjxjj3401r3q0f6fx2wkcb";
  })
  (fetchNuGet {
    name = "System.Collections.Specialized";
    version = "4.3.0";
    sha256 = "1sdwkma4f6j85m3dpb53v9vcgd0zyc9jb33f8g63byvijcj39n20";
  })
  (fetchNuGet {
    name = "System.Collections.NonGeneric";
    version = "4.3.0";
    sha256 = "07q3k0hf3mrcjzwj8fwk6gv3n51cb513w4mgkfxzm3i37sc9kz7k";
  })
  (fetchNuGet {
    name = "System.Xml.XmlSerializer";
    version = "4.3.0";
    sha256 = "07pa4sx196vxkgl3csvdmw94nydlsm9ir38xxcs84qjn8cycd912";
  })
  (fetchNuGet {
    name = "System.Reflection.Emit.Lightweight";
    version = "4.0.1";
    sha256 = "1s4b043zdbx9k39lfhvsk68msv1nxbidhkq6nbm27q7sf8xcsnxr";
  })
  (fetchNuGet {
    name = "System.Reflection.TypeExtensions";
    version = "4.1.0";
    sha256 = "1bjli8a7sc7jlxqgcagl9nh8axzfl11f4ld3rjqsyxc516iijij7";
  })
  (fetchNuGet {
    name = "System.Reflection.Emit.ILGeneration";
    version = "4.0.1";
    sha256 = "1pcd2ig6bg144y10w7yxgc9d22r7c7ww7qn1frdfwgxr24j9wvv0";
  })
  (fetchNuGet {
    name = "System.Reflection.Emit";
    version = "4.0.1";
    sha256 = "0ydqcsvh6smi41gyaakglnv252625hf29f7kywy2c70nhii2ylqp";
  })
  (fetchNuGet {
    name = "DBriize";
    version = "1.0.0.4";
    sha256 = "158691fwl97mym2nb8nvwf398siyimw0n6fjh1iwvg9qjfdbq39s";
  })
  (fetchNuGet {
    name = "Microsoft.Azure.ServiceBus";
    version = "3.1.1";
    sha256 = "1kbkgs6qm5qhp1krn65iy7rsz0793yac6cjmgr0yqga2mda3jcql";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.App";
    version = "2.1.0";
    sha256 = "1qgw6njwz30l5cwkvgf2fbsjqkc9vy0w3939c24iabmvjnzjr6a4";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.App";
    version = "2.1.9";
    sha256 = "1h1a60xblxbpdll7kzvqcvdh6h3xym4x5b7qibsnkq4y7rsyghhv";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.Platforms";
    version = "2.1.0";
    sha256 = "0nmdnkmwyxj8cp746hs9an57zspqlmqdm55b00i7yk8a22s6akxz";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.Targets";
    version = "2.1.0";
    sha256 = "1dav8x5551nwdqfigxf9zfsml5l9lakg86x38s9dvps81xs5d9zq";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.DotNetHostPolicy";
    version = "2.1.0";
    sha256 = "1xh8ij7zyfkrk20rgpwqs00mxdy2qiwr7qar2xk397zk2bh2d90n";
  })
  (fetchNuGet {
    name = "NETStandard.Library";
    version = "1.6.1";
    sha256 = "1z70wvsx2d847a2cjfii7b83pjfs34q05gb037fdjikv5kbagml8";
  })
  (fetchNuGet {
    name = "System.Xml.XmlSerializer";
    version = "4.0.11";
    sha256 = "01nzc3gdslw90qfykq4qzr2mdnqxjl4sj0wp3fixiwdmlmvpib5z";
  })
  (fetchNuGet {
    name = "System.Diagnostics.DiagnosticSource";
    version = "4.0.0";
    sha256 = "1n6c3fbz7v8d3pn77h4v5wvsfrfg7v1c57lg3nff3cjyh597v23m";
  })
  (fetchNuGet {
    name = "runtime.native.System.Data.SqlClient.sni";
    version = "4.4.0";
    sha256 = "15wnpyy506q3vyk1yzdjjf49zpdynr7ghh0x5fbz4pcc1if0p9ky";
  })
  (fetchNuGet {
    name = "System.Text.Encoding.CodePages";
    version = "4.5.0";
    sha256 = "19x38911pawq4mrxrm04l2bnxwxxlzq8v8rj4cbxnfjj8pnd3vj3";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Xml";
    version = "5.2.0";
    sha256 = "12nfnvqansl7rc4h1irgjq4nhcahcjkagplwhpa0lh6y48a7qadq";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Tokens.Saml";
    version = "5.2.0";
    sha256 = "1jvacjjyh72c9zf0y6yhjjn06jjdn0033wa8j71l63zbav4b6xgz";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Tokens";
    version = "5.2.0";
    sha256 = "1ymny8dm2vbhnhk6dz9vqpnn0k4g9zf9yyfk2zmg43pypk69j6zr";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Protocols";
    version = "5.2.0";
    sha256 = "03rblmm07y3w6cs36a4zh2dhhqgqk4w2z58jxql1ch013s5mmc74";
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
    name = "System.Diagnostics.FileVersionInfo";
    version = "4.3.0";
    sha256 = "094hx249lb3vb336q7dg3v257hbxvz2jnalj695l7cg5kxzqwai7";
  })
  (fetchNuGet {
    name = "System.Reflection.Metadata";
    version = "1.4.2";
    sha256 = "08b7b43vczlliv8k7q43jinjfrxwpljsglw7sxmc6sd7d54pd1vi";
  })
  (fetchNuGet {
    name = "System.Collections.Immutable";
    version = "1.3.1";
    sha256 = "17615br2x5riyx8ivf1dcqwj6q3ipq1bi5hqhw54yfyxmx38ddva";
  })
  (fetchNuGet {
    name = "System.Diagnostics.DiagnosticSource";
    version = "4.4.1";
    sha256 = "135xgv5rwmzi9girb8abnp1xradwy2w3n96j2az7v8j694z3znmi";
  })
  (fetchNuGet {
    name = "Microsoft.Azure.Amqp";
    version = "2.3.5";
    sha256 = "0al08pk7lhsc6lp7cpaknq13svc9nz3rlq3hd9gs3iawhsaw1z9l";
  })
  (fetchNuGet {
    name = "Microsoft.Azure.Services.AppAuthentication";
    version = "1.0.1";
    sha256 = "1bajackyalx3hpadz4wbqlqhh3ckqib0y5kmhkc25i39vpms80pv";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Clients.ActiveDirectory";
    version = "3.17.2";
    sha256 = "0rcpdk5g9hmsrwhy0iryinmi53k4mpghrvbx3qiv8svfq56sp56h";
  })
  (fetchNuGet {
    name = "System.Threading.Tasks.Parallel";
    version = "4.3.0";
    sha256 = "1rr3qa4hxwyj531s4nb3bwrxnxxwz617i0n9gh6x7nr7dd3ayzgh";
  })
  (fetchNuGet {
    name = "System.IdentityModel.Tokens.Jwt";
    version = "5.2.2";
    sha256 = "1k0vy59j1z97a1qjffd9p4n12jydirddnbwwjx6xylp05crdaa6b";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication";
    version = "2.1.2";
    sha256 = "1wqd6h7sgs4vb9i23zvp7wpp58fyppd5m8zdr8akxm3g5z5znhzn";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Analyzers";
    version = "2.1.3";
    sha256 = "0xd288hbzylm5z8akrkchsdbf3xprazgk03lik8m1ivfry70n95p";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Formatters.Xml";
    version = "2.1.3";
    sha256 = "1ia8gk2vwz6zr0q21scs2h17gysj5ih963gc2kjca00mrrgqgjmm";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Cookies";
    version = "2.1.2";
    sha256 = "1vbdnmd2f50m4bgx9n2bhbcw1rbbr01jb3mig81xnsnflxv1dz4f";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.CookiePolicy";
    version = "2.1.2";
    sha256 = "0cncxl26sdwnd627ylsm10afww5vc619a99ma8r2r092pml1k0mi";
  })
  (fetchNuGet {
    name = "xunit.runner.visualstudio";
    version = "2.4.1";
    sha256 = "0fln5pk18z98gp0zfshy1p9h6r9wc55nyqhap34k89yran646vhn";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Connections.Abstractions";
    version = "2.1.3";
    sha256 = "1pfpcg92lb7g7hi8w5vpqz01gyi0vvj0071sgkm6b97sqy10ss15";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Twitter";
    version = "2.1.2";
    sha256 = "0fm6lljrnwdjqf4vmm051d3fddbp1vmw06vvkmn3rxa2sy9bkf7x";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.MicrosoftAccount";
    version = "2.1.2";
    sha256 = "0g409ply8p3a0hd0v1k5rlyyv3wc12xbvzl4dxhwzfk8abbr3iv9";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.InMemory";
    version = "2.1.8";
    sha256 = "0jhrjagcknrkb13wm57nd4bi7aqamsniv4bzqhlk6j8sbn582cli";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Options";
    version = "2.1.1";
    sha256 = "0wgpsi874gzzjj099xbdmmsifslkbdjkxd5xrzpc5xdglpkw08vl";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.DataProtection.Abstractions";
    version = "2.1.1";
    sha256 = "0983rnhbj1v63yah90lb195592khxb3mvg3ab6n8brfr9yaxq3jy";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.TagHelpers";
    version = "2.1.3";
    sha256 = "1xqxcdfhvqq4vhrvp9qyz7qprd35sh0s0znyziy8w90c3cwzh1ki";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.SignalR";
    version = "1.0.4";
    sha256 = "0rr6yb4vkqp2hh729xn5xsw9fhd4hgmfwrbn4xqi44mdqqg2c74b";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.ApiExplorer";
    version = "2.1.3";
    sha256 = "1znlp15rzm8cwlbf4fv6f29m3w63dvjphkgacdrg1h9jjwszkyf9";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Facebook";
    version = "2.1.2";
    sha256 = "11b7bvjbs70di6dqaysln8j472dy7l9dxnrhikgyzgpdf9yaf7wi";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore";
    version = "2.1.7";
    sha256 = "10xkypd0dyaxliz0x5gfsbsq2qdvzcxrf3mwfql00qk8sc1315pf";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Owin";
    version = "2.1.1";
    sha256 = "1qssvs35w2wizm676sfxhc52x6p36qiy3h1wips5300zfd7vx3rg";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Razor.Runtime";
    version = "2.1.2";
    sha256 = "0qhg94kwk5hm10lkf6lc4araig1x3kwinyydp10il6m5rwvqdv9x";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Caching.Memory";
    version = "2.1.2";
    sha256 = "0j1rhzzz4bvnvcif6hc7ymq0sr3l6bmkfq5f7znjf6gi2yla8asr";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.UserSecrets";
    version = "2.1.1";
    sha256 = "1w36xzrxvs2p6lip7dshgpl1n331rbdrgxz59x42fzywsnrg3kfb";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.EnvironmentVariables";
    version = "2.1.1";
    sha256 = "0b7f3fjdnfdm7qzqnbym344rbv8fh9qmngqnz5q1c2rapm9s6si8";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileSystemGlobbing";
    version = "2.1.1";
    sha256 = "039w2gfvapdy5a1gl1bkajr6glngp29j895cgysy8132vg80jgwb";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Razor";
    version = "2.1.2";
    sha256 = "0bshgdilapyy487rvz40mpm1ybb5jhngl32dnz9llbns6gkgqd3b";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Abstractions";
    version = "2.1.3";
    sha256 = "0cf7gdmla7i61rw7z9hsigh0x1fmlzk2glgsybayxsjp48w8hd3m";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Binder";
    version = "2.1.1";
    sha256 = "0n91s6cjfv8plf5swhr307s849jmq2pa3i1rbpb0cb0grxml0mqm";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Features";
    version = "2.1.1";
    sha256 = "0vifha5wfynpgg4kvdmbqcgn6ngkxkkdmx1qnvlphmjx0iw7sw3d";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration";
    version = "2.1.1";
    sha256 = "0244czr3jflvzcj6axq61j10dkl0f16ad34rw81ryg57v4cvlwx6";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Cryptography.KeyDerivation";
    version = "2.1.1";
    sha256 = "1phhx3mrd046v066kbxgsjw5jln0yxn5zn55yfdafi7g52ki343z";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Routing.Abstractions";
    version = "2.1.1";
    sha256 = "04dx2ysk34x4vy1q0sxsqhzmfcxkn438k4fbsz5z8m0x6kdiv9gi";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Hosting.Abstractions";
    version = "2.1.1";
    sha256 = "1wnlcnaqfv3xpmhi5rpkn1r6bfrpv3pb8rvfz9dk5l87mllpi5mm";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileProviders.Embedded";
    version = "2.1.1";
    sha256 = "1f6gjsb96fy106865w2xhl4hxhj4mlpac5qi43jmlh29pa3mbhqw";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.TraceSource";
    version = "2.1.1";
    sha256 = "1iz76bzg1a3rhr6n1sx7ldvwzfs6zly77m16fjzd5jqnwrkz991x";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Localization";
    version = "2.1.3";
    sha256 = "1car7d4bjin5h9yvr3kr809sqxpqyzsgp9b6k9yl2w3dzccac8a9";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Debug";
    version = "2.1.1";
    sha256 = "14wb3kjgd801v4lqjsfif7r347xz3krcy7ljmzjy8gs93rfgbzr8";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Options.ConfigurationExtensions";
    version = "2.1.1";
    sha256 = "0cp4l68jhnlgyz9v011hbzwxb5x22qh7n47qpivks0x38qnbfxiv";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Cors";
    version = "2.1.1";
    sha256 = "123h27vy0ygzmfn2apa0q83ypwd07nrjbw443ykqkz5r6nbxipnv";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Abstractions";
    version = "2.1.1";
    sha256 = "1sgpwj0sa0ac7m5fnkb482mnch8fsv8hfbvk53c6lyh47s1xhdjg";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Razor.ViewCompilation";
    version = "2.1.1";
    sha256 = "1mps2n1rzvvvnx8w3fqbinkgxskwgggmc373fqb3b5wzdp20w5qa";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Ini";
    version = "2.1.1";
    sha256 = "0ppy5zsv4m5jx3yk5jj8mh1p6iiw40i9q949fhh81nqb577iqsr3";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Configuration";
    version = "2.1.1";
    sha256 = "1qjri8c506928ld7mnyi1cdw08736yzqnlalghkbalhi82bcr3vq";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Localization.Abstractions";
    version = "2.1.1";
    sha256 = "0d695l6lg67m5r7zdmi0r2yb1dfmab7lz0wh4axb0msc5arh877v";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore";
    version = "2.1.1";
    sha256 = "1s535w90vdgrn1bfllgjyjf06gw1s0jl2c608wbxkjysraiwhadq";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Rewrite";
    version = "2.1.1";
    sha256 = "0sn9s66vdi15spdlgrp89ryigbrjh22azvdzzhcz7zyzv5w32ays";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authorization.Policy";
    version = "2.1.2";
    sha256 = "1zckwl0qpfz466vbgq92wq5v44cjrlsyszl5s98ins3q3kyq9xb5";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Server.Kestrel.Transport.Abstractions";
    version = "2.1.3";
    sha256 = "0lnbbbs5lx2x414smmfinjlc5xqrbn0ps5m3nlgw6w5jajmlikkd";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Identity";
    version = "2.1.6";
    sha256 = "0g2mb4w7wnr62cyqcg69mxrmr9visqaqj0lclw3nywmzkbkva5gz";
  })
  (fetchNuGet {
    name = "System.IO.Pipelines";
    version = "4.5.3";
    sha256 = "1z44vn1qp866lkx78cfqdd4vs7xn1hcfn7in6239sq2kgf5qiafb";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Localization.Routing";
    version = "2.1.1";
    sha256 = "08nyl9j0szlinip1b8zv8lfn5lfy1gy2l6x4rw7di7iq5qgrvckm";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Cryptography.Internal";
    version = "2.1.1";
    sha256 = "0h6q90acbl67qhn4kxgily5pk0rk9kx06n3pxqz0myjw85nkpz2x";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging";
    version = "2.1.1";
    sha256 = "12pag6rf01xfa8x1h30mf4czfhlhg2kgi5q712jicy3h12c02w8y";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Razor.Extensions";
    version = "2.1.2";
    sha256 = "0rim87alixic1k60g30irxgaz8la3235iw10c3rmxp0w0sn7hc4s";
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
    name = "Microsoft.AspNetCore.Authentication.Core";
    version = "2.1.1";
    sha256 = "05xw9g0rijma7hvimhsxb69ibj4ykf3c6qnlsi8xl7c8lz25j8i4";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Abstractions";
    version = "2.1.1";
    sha256 = "1y90jx0xbmq9hwhvvyy6hbavvdffn0in71qfgq7gw2f92dg91j1r";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileProviders.Abstractions";
    version = "2.1.1";
    sha256 = "1shldpcczkc7rkxq0xd4zxm1r047bswy8nj1vx27aisni6nyqxys";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Routing";
    version = "2.1.1";
    sha256 = "065vy9nxcn87am2yxj918gs82g564jv1yfygfiygvw9wbvrfx8bd";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.HttpsPolicy";
    version = "2.1.1";
    sha256 = "1hmvs5zwfpwbhmvxa1jhkmmq6b34rfl0jl2v2p3vki6fa3azmj3c";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Analyzers";
    version = "2.1.8";
    sha256 = "07661df7772ahmzb0zmh1k2ns2gqwf5486azpiz7k1zs0q3ib2qy";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Diagnostics.Abstractions";
    version = "2.1.1";
    sha256 = "0mba7jcj4sfw5fbfwv00h1657m95l4f4zbrc0gkfcw2mv7kl6s8h";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.ObjectPool";
    version = "2.1.6";
    sha256 = "0j8fbfiw6dsn8ns0dymaisaqmyn65qzzbygafkmgn5z5ib83gdj7";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.SpaServices";
    version = "2.1.1";
    sha256 = "0q22c55vci5ha17q8ysky0y94f7w6ncg0a8wz692njm4lnf6y7hz";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Cors";
    version = "2.1.3";
    sha256 = "1gsz2rv07nm5k1qgh20p9k4a7hiabgm1w22465d4fxq6w25g8hsj";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.HttpOverrides";
    version = "2.1.1";
    sha256 = "0gml9rb102cahpqg09dkim068w99qibq6bcf3z3ij2x4sv12hrss";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.KeyPerFile";
    version = "2.1.1";
    sha256 = "1vmqq6qg2afjzxl6pgwsg9qibkf6pkz2drhqbf0ywhqkmwkb69mb";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc";
    version = "2.1.3";
    sha256 = "0qshkg1q2sdrigwk80f0adm5q82f305cjbm3zaqwiczfv4dkg4db";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Extensions";
    version = "2.1.1";
    sha256 = "01nbz8gl12bjcrw52z5w61khlzn02wngdkc68fsy7pl74vrzj69v";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.ResponseCaching";
    version = "2.1.1";
    sha256 = "17k47gihl40pbqfsys7f7y4iqsrzcnhi2dxng5m71nlj3wwx2nma";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Server.Kestrel.Https";
    version = "2.1.3";
    sha256 = "193wz686iixqbi4mcxqffjj7rl9fnb7iln52iwly54sa1lwffqa9";
  })
  (fetchNuGet {
    name = "System.ValueTuple";
    version = "4.3.0";
    sha256 = "1227k7fxbxapq7dms4lvwwjdf3pr1jcsmhy2nzzhj6g6hs530hxn";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Server.Kestrel";
    version = "2.1.3";
    sha256 = "1lcn2j2ps2d0rhry806shf9nfkcbqlysvx49qda7xszaz7xyjqji";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.MiddlewareAnalysis";
    version = "2.1.1";
    sha256 = "0rvc0149jy2mrrrd9abmqgry9iqsyycakkkmin2sl4g1gjnhxwbp";
  })
  (fetchNuGet {
    name = "Microsoft.Net.Http.Headers";
    version = "2.1.1";
    sha256 = "06q4xmxj25ry7gkl51zi7vh2957k9s49vdrlgfy03w9rqk81vnld";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.DiagnosticAdapter";
    version = "2.1.0";
    sha256 = "14p8jc63p8gvj0qvypafj1avkfymv7w9ln7pbx7f1j1lb3abbz34";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Localization";
    version = "2.1.1";
    sha256 = "0776iilyhyn57qysjm5b0qd7jx65dzm57m7xq5i56rgba5dn11qf";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Formatters.Json";
    version = "2.1.3";
    sha256 = "0riyjvpq5hapzsgxc2xdzj1qq13vzjf8yk9zkn7d76cj04ra96rl";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Server.Kestrel.Transport.Sockets";
    version = "2.1.3";
    sha256 = "1h0k08qf2fn59hjgizi1820r7kzai1xw7rq76s7hc7hi85pfb2hz";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.StaticFiles";
    version = "2.1.1";
    sha256 = "193kgnh75axi4c4sfjqmz73x440y9ksv1z83s7j5jd9q7zq1xpk3";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.FileProviders.Physical";
    version = "2.1.1";
    sha256 = "13rharvsycfk0056fbcx55npp9py7ng3hgcsasz1inva3q9lcngj";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Abstractions";
    version = "2.1.8";
    sha256 = "0indx7mk51hfqd4zcjddyj9pnlhn5fa3vald6imh8kyxvvjgai1n";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.Google";
    version = "2.1.8";
    sha256 = "17i89wyx732rb2cm1yhdcsp1pjzsrbfaqjv01vjz1fzxcf6rrzfa";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.ResponseCaching.Abstractions";
    version = "2.1.1";
    sha256 = "1qjrlpg2gj800ngy8473nfb5m0xi4aapc264ik9z18cl5xl35h4j";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Identity.EntityFrameworkCore";
    version = "2.1.6";
    sha256 = "01r9czyaszzl8fzrpd8qh05il691x7ybsv5w1882gfr9lns9m56f";
  })
  (fetchNuGet {
    name = "System.Diagnostics.StackTrace";
    version = "4.3.0";
    sha256 = "0ash4h9k0m7xsm0yl79r0ixrdz369h7y922wipp5gladmlbvpyjd";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.CommandLine";
    version = "2.1.1";
    sha256 = "0kz8khgnd57hjjlws25lcrw2459ycly9d1nxsv2k3gag7d1p09xw";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.Console";
    version = "2.1.1";
    sha256 = "02jgxk4blj0gpbvndfih5mngqdhpmcsmcmpv6pds830b2by4dmcj";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.DependencyInjection";
    version = "2.1.1";
    sha256 = "1ll7kmp8csngy27azxh0vcli2w4sgvamqh11c9z5d4spjh6jzxcp";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.ResponseCompression";
    version = "2.1.1";
    sha256 = "17ymf2j07igaqf8xaq8kqsiq0zpmw2x8620inphlspsd2jnn8lhp";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Hosting";
    version = "2.1.1";
    sha256 = "1688cpxvz8nchdcfgzj94b35sihk02b3nvsa7vn74g4l7jzjpq2w";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.FileExtensions";
    version = "2.1.1";
    sha256 = "0nfydlxvgs7bxqamj0jww1wwxbipzm30ygxabk29zx9q1r0qbnx5";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authorization";
    version = "2.1.2";
    sha256 = "1cgwwb1flxhwa40iziya3r5n42vnar2y5z6jzk9g01i0khyc5hmk";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Hosting.Abstractions";
    version = "2.1.1";
    sha256 = "1vgiby2slglmwg4kjxyn6cmb3xksps6i6c9z11za6s8d2czjl90l";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Antiforgery";
    version = "2.1.1";
    sha256 = "14gi2axzlfga4v7dinn8vwqzpw8s68caf5bacrbhlnz1l0hsxkza";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.DataProtection.Extensions";
    version = "2.1.1";
    sha256 = "0q39z21ys04n820p8wh49qhnjra1cf76nlhvc72w3rzq3ab57ahd";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.HostFiltering";
    version = "2.1.1";
    sha256 = "0sq2hjvxsni24ah8dsp0ap52cjk7f6m538x5v2zw6l4ksd486c65";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Hosting.Server.Abstractions";
    version = "2.1.1";
    sha256 = "0zldzvhh7xraps3gg47anva3dm3gssynw3k3gazjvqwb4gblsw6p";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.RazorPages";
    version = "2.1.3";
    sha256 = "0km2pvi8ibyy7qd30bcz5igr63xjlg74rkj7d20mam61z21j8c58";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Abstractions";
    version = "2.1.1";
    sha256 = "0b4bn0cf39c6jlc8xnpi1d8f3pz0qhf8ng440yb95y5jv5q4fdyw";
  })
  (fetchNuGet {
    name = "Microsoft.CodeAnalysis.Analyzers";
    version = "1.1.0";
    sha256 = "08r667hj2259wbim1p3al5qxkshydykmb7nd9ygbjlg4mmydkapc";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Localization";
    version = "2.1.1";
    sha256 = "1d5ja7gb3ljyrk6r7kwrz315qkr8rdbc99rfxj93nnkmv6jzr7cc";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Tools";
    version = "2.1.8";
    sha256 = "0v1ndk7d6cvx94sxkgwjdhxiimw9273bnmrpx1v2743b99sghr40";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.WebSockets";
    version = "2.1.7";
    sha256 = "1vva8alvdbl20z2b6xjlp3nsk51a47s5b3xv1ffn245nrwyiy8j4";
  })
  (fetchNuGet {
    name = "Microsoft.DotNet.PlatformAbstractions";
    version = "2.1.0";
    sha256 = "1qydvyyinj3b5mraazjal3n2k7jqhn05b6n1a2f3qjkqkxi63dmy";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Html.Abstractions";
    version = "2.1.1";
    sha256 = "05kp4727s1v63g4zw0asdkc2c8wfyzjaxdbppzrspf74dbq5gv5p";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Session";
    version = "2.1.1";
    sha256 = "0aiklp4g3f0bpnslc8fm5fap383ixwzmlsgdbpwj9bsr2c44dj4l";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Abstractions";
    version = "2.1.1";
    sha256 = "02jsghkbfjz0rvrnfz5pakv8dpyfcc3wjxmj4rpp0fc2mmpibkys";
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
    name = "Microsoft.AspNetCore.SpaServices.Extensions";
    version = "2.1.1";
    sha256 = "0v5nsslgvndsxxk7b0y2msbbinrazsz3xmhdkvg74xp41y3s7mqc";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Primitives";
    version = "2.1.6";
    sha256 = "00q6k44wg5fl5c5k57zj986sx39k4idx7mwvllwa4d0hys1rkaj5";
  })
  (fetchNuGet {
    name = "System.Linq.Queryable";
    version = "4.0.1";
    sha256 = "11jn9k34g245yyf260gr3ldzvaqa9477w2c5nhb1p8vjx4xm3qaw";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Caching.Abstractions";
    version = "2.1.2";
    sha256 = "199qx5sabv5waad42c9srnplbmhbfzkmp22pvl8lsq3w7kfakhr7";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http";
    version = "2.1.1";
    sha256 = "04b9szil8ndw7k991m3x56xlm8pav0ap1caa9b23ik3jyavzq22a";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Identity.UI";
    version = "2.1.6";
    sha256 = "19ny72yiy2zkqcp71mlay489sraqp6ar1xfbxkya0h767by3sdjz";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Relational";
    version = "2.1.8";
    sha256 = "1x4lkds6s9kdl7h9b9ylilqylzf410s2ax1m8kfd7yk5p2d0x6ss";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Server.IISIntegration";
    version = "2.1.7";
    sha256 = "1vilwzx018qqxxbcky8rpbyj08x51nl6s19k1aal9liq73m54x0z";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Razor.Language";
    version = "2.1.2";
    sha256 = "0fvhrmfd2b90g7man71mx69wxnag8sdf0j836g1yyyqlvib2b5y0";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.Design";
    version = "2.1.8";
    sha256 = "1bfkzbcqzj7bcbgh71klfmjhggnzqcr4r0n8py8nv7x7c77s261m";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.DataAnnotations";
    version = "2.1.3";
    sha256 = "1fxp9a714py5w7kbfjaa2vs1x7c09gdk1kgl794xi5gfg3sx6y63";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Identity.Stores";
    version = "2.1.6";
    sha256 = "0akpyj2im8b9b0gad1q94k4r2fsrah04m96h9id28hgj4r2y1hay";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Identity.Core";
    version = "2.1.6";
    sha256 = "1mwgyrhsqn4vax9h22qcz0z29wb4dsxbxkxn0rz1klvr21y4m8mh";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.DependencyInjection.Abstractions";
    version = "2.1.1";
    sha256 = "0rn0925aqm1fsbaf0n8jy6ng2fm1cy97lp7yikvx31m6178k9i84";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Server.Kestrel.Core";
    version = "2.1.7";
    sha256 = "145ngkz19vhszvacz35v43kkj3006xg4ym2nl1k75q7p1xm9gi5m";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Hosting";
    version = "2.1.1";
    sha256 = "1prlc9qgwqvs0w3sjrbk9q8fhaq0l0pnvwyxa6gqcb0x82vmlhsl";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Diagnostics";
    version = "2.1.1";
    sha256 = "1rb0qh48mm7p0gk21h3vvjgf6rxqpy5f4mj2m16jyzlr9373wzav";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Server.HttpSys";
    version = "2.1.1";
    sha256 = "1d7ff5j7hy56f2n50975dadq924c3rwcj4gm5fnsm6jw522yajm3";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.DataProtection";
    version = "2.1.1";
    sha256 = "0j4b88cxy9cm8jkm52109zbkrl1rw95w7b6rvxavah180k4kfli4";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Xml";
    version = "2.1.1";
    sha256 = "0wvvvpbl54iibnw0b343fbwi8mz6r0ssz4fwmic80piq8rivggni";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.SignalR.Protocols.Json";
    version = "1.0.4";
    sha256 = "19y4khx189vpk9mh8in90qaixgvwklzxnl7i3yikw6k1z9bdczg2";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Connections.Common";
    version = "1.0.4";
    sha256 = "0iz418sgrn1dgmw5pnja0i1zb2y7l6izpbj4f475dk6dkswlp0kr";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.OAuth";
    version = "2.1.2";
    sha256 = "08a89syqq9p1xw4c359v8qhnz92mks3mvvidwpb3387l4iflkvv4";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Http.Connections";
    version = "1.0.4";
    sha256 = "0xpg2n9jjzknii10sicf1sw12xdzd814aisg16ixzkphdqs9fs3i";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.JsonPatch";
    version = "2.1.1";
    sha256 = "0anihfm5ghddxllvmxyzs2qrq44zx9xc5y02gw11rifigflfd54q";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Configuration.Json";
    version = "2.1.1";
    sha256 = "11fiac26s1blvc08az3khfcvz519qvqq5cfw71fx6h31nvjriv2a";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.SignalR.Common";
    version = "1.0.4";
    sha256 = "1hj11ydv5mpzjq9pl8b7b8rmxmx07zw1mm9zy3wc5zgwrv68ji22";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Logging.EventSource";
    version = "2.1.1";
    sha256 = "1h00avbrl3kd0xcvlvqfdgnrxm241ncs95bs9a0x42gl4hbibvb1";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.NodeServices";
    version = "2.1.1";
    sha256 = "1gr2d0rq73nyjayi3ywfi8146fph4x44kj636sqqz0vs7xmfnhi1";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Razor.Design";
    version = "2.1.2";
    sha256 = "05mpy9m6zj6dmiadzdyy35kwpx7p8s3c6qajyw82mdkgkg0avawq";
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
    name = "Microsoft.AspNetCore.SignalR.Core";
    version = "1.0.4";
    sha256 = "041bkqbwksdqanhbir8r1v2hyfnvxgac3q0yyiiw89gp6ass0sj3";
  })
  (fetchNuGet {
    name = "Microsoft.CodeAnalysis.Razor";
    version = "2.1.2";
    sha256 = "16rfbxca55piyn76mvzc8zx2q1v1ydi19b4hg1a50wm7hkh380ym";
  })
  (fetchNuGet {
    name = "System.Security.Permissions";
    version = "4.5.0";
    sha256 = "192ww5rm3c9mirxgl1nzyrwd18am3izqls0hzm0fvcdjl5grvbhm";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.Razor";
    version = "2.1.3";
    sha256 = "1kl7m7nxi23msxpvflrc5dh960w1iyw4nwzrcp9z1hs81dr509xd";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.JwtBearer";
    version = "2.1.2";
    sha256 = "11n324gvrhva1z67ns4x50vprh2pxd8vqjxdg2p3h3ql2mmsgjqb";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.OpenIdConnect";
    version = "2.1.2";
    sha256 = "08mfrxi7a7wmlqdzq2lr76k6k0741367ssmxkdwscsc9xp0k46l1";
  })
  (fetchNuGet {
    name = "Microsoft.AspNet.WebApi.Client";
    version = "5.2.6";
    sha256 = "1df9w8c38g45p095r75md84ci5r7dsrj5h5p6yx18s0mmvlzj7wc";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Mvc.ViewFeatures";
    version = "2.1.3";
    sha256 = "17rfw9zi5p78a4ggvwrz3y8rwminsyzpqk9pvkhyjrpbcxwh5ff7";
  })
  (fetchNuGet {
    name = "Microsoft.AspNetCore.Authentication.WsFederation";
    version = "2.1.2";
    sha256 = "1ws9j4nb6a36r9rd5dx3xn4v8jv03sbwdv2v0vd61vpqyby7cn1p";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.Caching.SqlServer";
    version = "2.1.2";
    sha256 = "088v649bc0i127cgn3vvibz8zrzmys6ns67ibar3a6a9884rw0wd";
  })
  (fetchNuGet {
    name = "Microsoft.EntityFrameworkCore.SqlServer";
    version = "2.1.8";
    sha256 = "04mv4z2arx59wadh5sq0xdrjkzv38k6aa3924rn1j79bz4wixvi9";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Pkcs";
    version = "4.5.0";
    sha256 = "16dhiz2qypk289dxiqa9rb7jmslnami6bykalv5dvbd8j91zikpy";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.DotNetHostResolver";
    version = "2.1.0";
    sha256 = "1384k3cg4sjcn3hyalcm43fhmlfj5pnywpzd9zpgc4jsr2c16x76";
  })
  (fetchNuGet {
    name = "System.AppContext";
    version = "4.3.0";
    sha256 = "1649qvy3dar900z3g817h17nl8jp4ka5vcfmsr05kh0fshn7j3ya";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Tools";
    version = "4.3.0";
    sha256 = "0in3pic3s2ddyibi8cvgl102zmvp9r9mchh82ns9f0ms4basylw1";
  })
  (fetchNuGet {
    name = "System.Security.AccessControl";
    version = "4.5.0";
    sha256 = "1wvwanz33fzzbnd2jalar0p0z3x0ba53vzx1kazlskp7pwyhlnq0";
  })
  (fetchNuGet {
    name = "System.Reflection.Extensions";
    version = "4.3.0";
    sha256 = "02bly8bdc98gs22lqsfx9xicblszr2yan7v2mmw3g7hy6miq5hwq";
  })
  (fetchNuGet {
    name = "System.Console";
    version = "4.3.0";
    sha256 = "1flr7a9x920mr5cjsqmsy9wgnv3lvd0h1g521pdr1lkb2qycy7ay";
  })
  (fetchNuGet {
    name = "xunit";
    version = "2.4.1";
    sha256 = "0xf3kaywpg15flqaqfgywqyychzk15kz0kz34j21rcv78q9ywq20";
  })
  (fetchNuGet {
    name = "NBitcoin.TestFramework";
    version = "1.7.4";
    sha256 = "048k8ry7w13frzvv5kk45yxk15jygq3ql72v38crfkbk3b04dzk2";
  })
  (fetchNuGet {
    name = "System.IO.Compression.ZipFile";
    version = "4.3.0";
    sha256 = "1yxy5pq4dnsm9hlkg9ysh5f6bf3fahqqb6p8668ndy5c0lk7w2ar";
  })
  (fetchNuGet {
    name = "Microsoft.NET.Test.Sdk";
    version = "16.0.1";
    sha256 = "1ymca15zky76ck85ymbs3qlfgpv9bfn52hw6ksjvfbwwsddq2lv3";
  })
  (fetchNuGet {
    name = "System.Xml.XDocument";
    version = "4.3.0";
    sha256 = "08h8fm4l77n0nd4i4fk2386y809bfbwqb7ih9d7564ifcxr5ssxd";
  })
  (fetchNuGet {
    name = "xunit.analyzers";
    version = "0.10.0";
    sha256 = "15n02q3akyqbvkp8nq75a8rd66d4ax0rx8fhdcn8j78pi235jm7j";
  })
  (fetchNuGet {
    name = "System.ObjectModel";
    version = "4.3.0";
    sha256 = "191p63zy5rpqx7dnrb3h7prvgixmk168fhvvkkvhlazncf8r3nc2";
  })
  (fetchNuGet {
    name = "xunit.assert";
    version = "2.4.1";
    sha256 = "1imynzh80wxq2rp9sc4gxs4x1nriil88f72ilhj5q0m44qqmqpc6";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.Platforms";
    version = "2.0.0";
    sha256 = "1fk2fk2639i7nzy58m9dvpdnzql4vb8yl8vr19r2fp8lmj9w2jr0";
  })
  (fetchNuGet {
    name = "System.Runtime.InteropServices.RuntimeInformation";
    version = "4.3.0";
    sha256 = "0q18r1sh4vn7bvqgd6dmqlw5v28flbpj349mkdish2vjyvmnb2ii";
  })
  (fetchNuGet {
    name = "xunit.core";
    version = "2.4.1";
    sha256 = "1nnb3j4kzmycaw1g76ii4rfqkvg6l8gqh18falwp8g28h802019a";
  })
  (fetchNuGet {
    name = "System.Text.RegularExpressions";
    version = "4.3.0";
    sha256 = "1bgq51k7fwld0njylfn7qc5fmwrk2137gdq7djqdsw347paa9c2l";
  })
  (fetchNuGet {
    name = "System.Xml.ReaderWriter";
    version = "4.3.0";
    sha256 = "0c47yllxifzmh8gq6rq6l36zzvw4kjvlszkqa9wq3fr59n0hl3s1";
  })
  (fetchNuGet {
    name = "System.IO.Compression";
    version = "4.3.0";
    sha256 = "084zc82yi6yllgda0zkgl2ys48sypiswbiwrv7irb3r0ai1fp4vz";
  })
  (fetchNuGet {
    name = "System.Private.DataContractSerialization";
    version = "4.1.1";
    sha256 = "1xk9wvgzipssp1393nsg4n16zbr5481k03nkdlj954hzq5jkx89r";
  })
  (fetchNuGet {
    name = "System.Net.Http";
    version = "4.3.0";
    sha256 = "1i4gc757xqrzflbk7kc5ksn20kwwfjhw9w7pgdkn19y3cgnl302j";
  })
  (fetchNuGet {
    name = "System.Linq.Expressions";
    version = "4.3.0";
    sha256 = "0ky2nrcvh70rqq88m9a5yqabsl4fyd17bpr63iy2mbivjs2nyypv";
  })
  (fetchNuGet {
    name = "System.Xml.XPath";
    version = "4.0.1";
    sha256 = "0fjqgb6y66d72d5n8qq1h213d9nv2vi8mpv8p28j3m9rccmsh04m";
  })
  (fetchNuGet {
    name = "System.Net.WebSockets.Client";
    version = "4.0.2";
    sha256 = "0p8m9h94h9za8281hngpi6awka6v26s1gkk0npmxzqq4ilas6b4s";
  })
  (fetchNuGet {
    name = "System.Runtime.Serialization.Primitives";
    version = "4.1.1";
    sha256 = "042rfjixknlr6r10vx2pgf56yming8lkjikamg3g4v29ikk78h7k";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Process";
    version = "4.3.0";
    sha256 = "0g4prsbkygq8m21naqmcp70f24a1ksyix3dihb1r1f71lpi3cfj7";
  })
  (fetchNuGet {
    name = "NETStandard.Library";
    version = "1.6.0";
    sha256 = "0nmmv4yw7gw04ik8ialj3ak0j6pxa9spih67hnn1h2c38ba8h58k";
  })
  (fetchNuGet {
    name = "NBitcoin";
    version = "4.1.2.12";
    sha256 = "1cvbaqnzkdqcrxj9s9pqydmkh3dyb14jm8ra9hrdr4rwyivd4yl7";
  })
  (fetchNuGet {
    name = "System.Runtime.Serialization.Json";
    version = "4.3.0";
    sha256 = "1qp8ghr70smspnjdmlcbl5vwb7fm2iy1b7wx1p53lbpl35w4kz4a";
  })
  (fetchNuGet {
    name = "System.Runtime.Serialization.Primitives";
    version = "4.3.0";
    sha256 = "01vv2p8h4hsz217xxs0rixvb7f2xzbh6wv1gzbfykcbfrza6dvnf";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Tokens";
    version = "5.2.2";
    sha256 = "1ik1d5yza2fgkdn7709vig6mz7gq3dg3d3ip9py4k88xsxv81lx5";
  })
  (fetchNuGet {
    name = "Newtonsoft.Json";
    version = "10.0.1";
    sha256 = "15ncqic3p2rzs8q8ppi0irl2miq75kilw4lh8yfgjq96id0ds3hv";
  })
  (fetchNuGet {
    name = "System.Diagnostics.DiagnosticSource";
    version = "4.5.0";
    sha256 = "1y8m0p3127nak5yspapfnz25qc9x53gqpvwr3hdpsvrcd2r1pgyj";
  })
  (fetchNuGet {
    name = "System.Net.WebSockets.WebSocketProtocol";
    version = "4.5.3";
    sha256 = "0z9ccndkkq6gpsh35q3pjm4zya47p6vakcyj8nc352g4wiizqc8c";
  })
  (fetchNuGet {
    name = "Microsoft.CodeCoverage";
    version = "16.0.1";
    sha256 = "0qigva01sawgwily24ms3faavn4y7cb4b44mdqq3n8ipfjsn7775";
  })
  (fetchNuGet {
    name = "System.Text.Encodings.Web";
    version = "4.5.0";
    sha256 = "0srd5bva52n92i90wd88pzrqjsxnfgka3ilybwh7s6sf469y5s53";
  })
  (fetchNuGet {
    name = "System.Runtime.CompilerServices.Unsafe";
    version = "4.5.2";
    sha256 = "1vz4275fjij8inf31np78hw50al8nqkngk04p3xv5n4fcmf1grgi";
  })
  (fetchNuGet {
    name = "System.Xml.XmlDocument";
    version = "4.0.1";
    sha256 = "0ihsnkvyc76r4dcky7v3ansnbyqjzkbyyia0ir5zvqirzan0bnl1";
  })
  (fetchNuGet {
    name = "System.Memory";
    version = "4.5.1";
    sha256 = "0f07d7hny38lq9w69wx4lxkn4wszrqf9m9js6fh9is645csm167c";
  })
  (fetchNuGet {
    name = "System.Memory";
    version = "4.5.2";
    sha256 = "1g24dwqfcmf4gpbgbhaw1j49xmpsz389l6bw2xxbsmnzvsf860ld";
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
    name = "System.ComponentModel.Annotations";
    version = "4.5.0";
    sha256 = "1jj6f6g87k0iwsgmg3xmnn67a14mq88np0l1ys5zkxhkvbc8976p";
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
    name = "System.Reflection.Metadata";
    version = "1.6.0";
    sha256 = "1wdbavrrkajy7qbdblpbpbalbdl48q3h34cchz24gvdgyrlf15r4";
  })
  (fetchNuGet {
    name = "System.Collections.Immutable";
    version = "1.2.0";
    sha256 = "1jm4pc666yiy7af1mcf7766v710gp0h40p228ghj6bavx7xfa38m";
  })
  (fetchNuGet {
    name = "Microsoft.TestPlatform.TestHost";
    version = "16.0.1";
    sha256 = "0sisl5v63i5rgfxamshpx3977cw459d7fz721z06c39mkgw6k03m";
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
    name = "System.Security.Cryptography.Xml";
    version = "4.5.0";
    sha256 = "1rk40x0msf9k7sxnjyizagjns1z25dh3cf22bx6hsx6vhf0sk08l";
  })
  (fetchNuGet {
    name = "System.Diagnostics.DiagnosticSource";
    version = "4.5.1";
    sha256 = "1j8dgilsgd0n7y87wq1cdlnwck96wijhbyhdp4d01l1gzm3074c1";
  })
  (fetchNuGet {
    name = "System.Collections.Immutable";
    version = "1.5.0";
    sha256 = "1d5gjn5afnrf461jlxzawcvihz195gayqpcfbv6dd7pxa9ialn06";
  })
  (fetchNuGet {
    name = "Remotion.Linq";
    version = "2.2.0";
    sha256 = "1y46ni0xswmmiryp8sydjgryafwn458dr91f9xn653w73kdyk4xf";
  })
  (fetchNuGet {
    name = "System.Interactive.Async";
    version = "3.1.1";
    sha256 = "03iq20gq0n2b2sdzs5jhxf46nzkfgvzip6q5248vka2rcvn1yanh";
  })
  (fetchNuGet {
    name = "System.Threading.Channels";
    version = "4.5.0";
    sha256 = "0n6z3wjia7h2a5vl727p97riydnb6jhhkb1pdcnizza02dwkz0nz";
  })
  (fetchNuGet {
    name = "Microsoft.Extensions.DependencyModel";
    version = "2.1.0";
    sha256 = "0dl4qhjgifm6v3jsfzvzkvddyic77ggp9fq49ah661v45gk6ilgd";
  })
  (fetchNuGet {
    name = "xunit.extensibility.execution";
    version = "2.4.1";
    sha256 = "1pbilxh1gp2ywm5idfl0klhl4gb16j86ib4x83p8raql1dv88qia";
  })
  (fetchNuGet {
    name = "System.Reflection.Emit";
    version = "4.3.0";
    sha256 = "11f8y3qfysfcrscjpjym9msk7lsfxkk4fmz9qq95kn3jd0769f74";
  })
  (fetchNuGet {
    name = "Microsoft.CodeAnalysis.CSharp";
    version = "2.8.0";
    sha256 = "0p1xvw1h2fmnxywv1j4x6p3rgarpc8mfwfgn0vflk5xfnc961f6w";
  })
  (fetchNuGet {
    name = "Microsoft.CodeAnalysis.Common";
    version = "2.8.0";
    sha256 = "0g4h41fs0r8lqh9pk9s4mc1090kdpa6sbxq4rc866s8hnq9s1h4j";
  })
  (fetchNuGet {
    name = "Microsoft.Win32.Registry";
    version = "4.0.0";
    sha256 = "1spf4m9pikkc19544p29a47qnhcd885klncahz133hbnyqbkmz9k";
  })
  (fetchNuGet {
    name = "xunit.extensibility.core";
    version = "2.4.1";
    sha256 = "103qsijmnip2pnbhciqyk2jyhdm6snindg5z2s57kqf5pcx9a050";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Protocols.OpenIdConnect";
    version = "5.2.0";
    sha256 = "1g0ma5d4nm3934lwin6zqiw53r28dlgfbsaz8wl0fd2ri6r5qwqr";
  })
  (fetchNuGet {
    name = "Newtonsoft.Json.Bson";
    version = "1.0.1";
    sha256 = "1r1hvj5gjl466bya2bfl5aaj8rbwyf5x1msg710wf3k2llbci1xa";
  })
  (fetchNuGet {
    name = "System.IdentityModel.Tokens.Jwt";
    version = "5.2.0";
    sha256 = "14qdqyvm24wpxiinsnk3k3n9849gd35wxaak9bnyxy3gcmvy3w4d";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Protocols.WsFederation";
    version = "5.2.0";
    sha256 = "19dnbr15g17c3qrqm1sxik5rzpsw872bh60dfzh8z6wgqw74p6vy";
  })
  (fetchNuGet {
    name = "System.Data.SqlClient";
    version = "4.5.1";
    sha256 = "10msv1gzz244slgbz2y71jql6ga72ksd1brycwh6ljq5hn46k9yq";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.DotNetAppHost";
    version = "2.1.0";
    sha256 = "10hnhkix2av0c7djp2q88pw407m8gk3im4r06x762a3cs6f2jprd";
  })
  (fetchNuGet {
    name = "System.Buffers";
    version = "4.3.0";
    sha256 = "0fgns20ispwrfqll4q1zc1waqcmylb3zc50ys9x8zlwxh9pmd9jy";
  })
  (fetchNuGet {
    name = "System.Threading.Tasks.Extensions";
    version = "4.3.0";
    sha256 = "1xxcx2xh8jin360yjwm4x4cf5y3a2bwpn2ygkfkwkicz7zk50s2z";
  })
  (fetchNuGet {
    name = "System.Threading.ThreadPool";
    version = "4.0.10";
    sha256 = "0fdr61yjcxh5imvyf93n2m3n5g9pp54bnw2l1d2rdl9z6dd31ypx";
  })
  (fetchNuGet {
    name = "runtime.native.System.IO.Compression";
    version = "4.3.0";
    sha256 = "1vvivbqsk6y4hzcid27pqpm5bsi6sc50hvqwbcx8aap5ifrxfs8d";
  })
  (fetchNuGet {
    name = "System.Reflection.Emit.ILGeneration";
    version = "4.3.0";
    sha256 = "0w1n67glpv8241vnpz1kl14sy7zlnw414aqwj4hcx5nd86f6994q";
  })
  (fetchNuGet {
    name = "System.Reflection.TypeExtensions";
    version = "4.3.0";
    sha256 = "0y2ssg08d817p0vdag98vn238gyrrynjdj4181hdg780sif3ykp1";
  })
  (fetchNuGet {
    name = "System.ComponentModel";
    version = "4.0.1";
    sha256 = "0v4qpmqlzyfad2kswxxj2frnaqqhz9201c3yn8fmmarx5vlzg52z";
  })
  (fetchNuGet {
    name = "System.Reflection.Emit.Lightweight";
    version = "4.3.0";
    sha256 = "0ql7lcakycrvzgi9kxz1b3lljd990az1x6c4jsiwcacrvimpib5c";
  })
  (fetchNuGet {
    name = "System.Net.WebHeaderCollection";
    version = "4.0.1";
    sha256 = "10bxpxj80c4z00z3ksrfswspq9qqsw8jwxcbzvymzycb97m9b55q";
  })
  (fetchNuGet {
    name = "System.Net.WebSockets";
    version = "4.0.0";
    sha256 = "04jdhq9dp43x1m6hddn06sq74skc50i1yk6hip0224pj6fwxa4k2";
  })
  (fetchNuGet {
    name = "System.Collections.NonGeneric";
    version = "4.0.1";
    sha256 = "19994r5y5bpdhj7di6w047apvil8lh06lh2c2yv9zc4fc5g9bl4d";
  })
  (fetchNuGet {
    name = "Microsoft.NETCore.Platforms";
    version = "1.0.2";
    sha256 = "17rrj0awknxx6rpdxr7yijdxqdmbbpdlcf2nsadjbd4d2gw7dck0";
  })
  (fetchNuGet {
    name = "Microsoft.Win32.Primitives";
    version = "4.0.1";
    sha256 = "1n8ap0cmljbqskxpf8fjzn7kh1vvlndsa75k01qig26mbw97k2q7";
  })
  (fetchNuGet {
    name = "System.Net.Primitives";
    version = "4.0.11";
    sha256 = "10xzzaynkzkakp7jai1ik3r805zrqjxiz7vcagchyxs2v26a516r";
  })
  (fetchNuGet {
    name = "System.ComponentModel.Primitives";
    version = "4.1.0";
    sha256 = "0wb5mnaag0w4fnyc40x19j8v2vshxp266razw64bcqfyj1whb1q0";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.X509Certificates";
    version = "4.1.0";
    sha256 = "0clg1bv55mfv5dq00m19cp634zx6inm31kf8ppbq1jgyjf2185dh";
  })
  (fetchNuGet {
    name = "System.Collections.Specialized";
    version = "4.0.1";
    sha256 = "1wbv7y686p5x169rnaim7sln67ivmv6r57falrnx8aap9y33mam9";
  })
  (fetchNuGet {
    name = "Newtonsoft.Json";
    version = "9.0.1";
    sha256 = "0mcy0i7pnfpqm4pcaiyzzji4g0c8i3a5gjz28rrr28110np8304r";
  })
  (fetchNuGet {
    name = "Microsoft.Win32.Registry";
    version = "4.3.0";
    sha256 = "1gxyzxam8163vk1kb6xzxjj4iwspjsz9zhgn1w9rjzciphaz0ig7";
  })
  (fetchNuGet {
    name = "System.Threading.Thread";
    version = "4.3.0";
    sha256 = "0y2xiwdfcph7znm2ysxanrhbqqss6a3shi1z3c779pj2s523mjx4";
  })
  (fetchNuGet {
    name = "System.IO.FileSystem.Primitives";
    version = "4.0.1";
    sha256 = "1s0mniajj3lvbyf7vfb5shp4ink5yibsx945k6lvxa96r8la1612";
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
    name = "Microsoft.Extensions.DependencyModel";
    version = "1.0.3";
    sha256 = "1vclzbn8aq3wnvib34kr8g86gi37r6hn1ax9nc1sllid3h026irl";
  })
  (fetchNuGet {
    name = "System.IO.FileSystem";
    version = "4.0.1";
    sha256 = "0kgfpw6w4djqra3w5crrg8xivbanh1w9dh3qapb28q060wb9flp1";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Tools";
    version = "4.0.1";
    sha256 = "19cknvg07yhakcvpxg3cxa0bwadplin6kyxd8mpjjpwnp56nl85x";
  })
  (fetchNuGet {
    name = "System.Reflection.Extensions";
    version = "4.0.1";
    sha256 = "0m7wqwq0zqq9gbpiqvgk3sr92cbrw7cp3xn53xvw7zj6rz6fdirn";
  })
  (fetchNuGet {
    name = "Microsoft.TestPlatform.ObjectModel";
    version = "16.0.1";
    sha256 = "1sv44px30zvwnmn18p0494i7g3r09bd4s2ci2k94pnx3y4k2mard";
  })
  (fetchNuGet {
    name = "System.Text.Encoding.Extensions";
    version = "4.0.11";
    sha256 = "08nsfrpiwsg9x5ml4xyl3zyvjfdi4mvbqf93kjdh11j4fwkznizs";
  })
  (fetchNuGet {
    name = "System.Threading.Timer";
    version = "4.0.1";
    sha256 = "15n54f1f8nn3mjcjrlzdg6q3520571y012mx7v991x2fvp73lmg6";
  })
  (fetchNuGet {
    name = "System.Globalization.Calendars";
    version = "4.0.1";
    sha256 = "0bv0alrm2ck2zk3rz25lfyk9h42f3ywq77mx1syl6vvyncnpg4qh";
  })
  (fetchNuGet {
    name = "System.Net.Sockets";
    version = "4.1.0";
    sha256 = "1385fvh8h29da5hh58jm1v78fzi9fi5vj93vhlm2kvqpfahvpqls";
  })
  (fetchNuGet {
    name = "System.Runtime.Numerics";
    version = "4.0.1";
    sha256 = "1y308zfvy0l5nrn46mqqr4wb4z1xk758pkk8svbz8b5ij7jnv4nn";
  })
  (fetchNuGet {
    name = "System.IO.Compression.ZipFile";
    version = "4.0.1";
    sha256 = "0h72znbagmgvswzr46mihn7xm7chfk2fhrp5krzkjf29pz0i6z82";
  })
  (fetchNuGet {
    name = "System.Text.RegularExpressions";
    version = "4.1.0";
    sha256 = "1mw7vfkkyd04yn2fbhm38msk7dz2xwvib14ygjsb8dq2lcvr18y7";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Primitives";
    version = "4.0.0";
    sha256 = "0i7cfnwph9a10bm26m538h5xcr8b36jscp9sy1zhgifksxz4yixh";
  })
  (fetchNuGet {
    name = "System.ObjectModel";
    version = "4.0.12";
    sha256 = "1sybkfi60a4588xn34nd9a58png36i0xr4y4v4kqpg8wlvy5krrj";
  })
  (fetchNuGet {
    name = "xunit.abstractions";
    version = "2.0.3";
    sha256 = "00wl8qksgkxld76fgir3ycc5rjqv1sqds6x8yx40927q5py74gfh";
  })
  (fetchNuGet {
    name = "System.Runtime.InteropServices.RuntimeInformation";
    version = "4.0.0";
    sha256 = "0glmvarf3jz5xh22iy3w9v3wyragcm4hfdr17v90vs7vcrm7fgp6";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Encoding";
    version = "4.0.0";
    sha256 = "0a8y1a5wkmpawc787gfmnrnbzdgxmx1a14ax43jf3rj9gxmy3vk4";
  })
  (fetchNuGet {
    name = "System.Security.Cryptography.Algorithms";
    version = "4.2.0";
    sha256 = "148s9g5dgm33ri7dnh19s4lgnlxbpwvrw2jnzllq2kijj4i4vs85";
  })
  (fetchNuGet {
    name = "System.Xml.XDocument";
    version = "4.0.11";
    sha256 = "0n4lvpqzy9kc7qy1a4acwwd7b7pnvygv895az5640idl2y9zbz18";
  })
  (fetchNuGet {
    name = "System.IO.Compression";
    version = "4.1.0";
    sha256 = "0iym7s3jkl8n0vzm3jd6xqg9zjjjqni05x45dwxyjr2dy88hlgji";
  })
  (fetchNuGet {
    name = "System.Xml.ReaderWriter";
    version = "4.0.11";
    sha256 = "0c6ky1jk5ada9m94wcadih98l6k1fvf6vi7vhn1msjixaha419l5";
  })
  (fetchNuGet {
    name = "System.Net.Http";
    version = "4.1.0";
    sha256 = "1i5rqij1icg05j8rrkw4gd4pgia1978mqhjzhsjg69lvwcdfg8yb";
  })
  (fetchNuGet {
    name = "System.Linq.Expressions";
    version = "4.1.0";
    sha256 = "1gpdxl6ip06cnab7n3zlcg6mqp7kknf73s8wjinzi4p0apw82fpg";
  })
  (fetchNuGet {
    name = "System.Private.DataContractSerialization";
    version = "4.3.0";
    sha256 = "06fjipqvjp559rrm825x6pll8gimdj9x1n3larigh5hsm584gndw";
  })
  (fetchNuGet {
    name = "Microsoft.IdentityModel.Logging";
    version = "5.2.2";
    sha256 = "07vc4rdi4ym5rd3gbxz2dh35j1w8k28z7j71a81985xvqcixr608";
  })
  (fetchNuGet {
    name = "System.Runtime.Serialization.Xml";
    version = "4.3.0";
    sha256 = "1b2cxl2h7s8cydbhbmxhvvq071n9ck61g08npg4gyw7nvg37rfni";
  })
  (fetchNuGet {
    name = "System.Dynamic.Runtime";
    version = "4.3.0";
    sha256 = "1d951hrvrpndk7insiag80qxjbf2y0y39y8h5hnq9612ws661glk";
  })
  (fetchNuGet {
    name = "System.Xml.XmlDocument";
    version = "4.3.0";
    sha256 = "0bmz1l06dihx52jxjr22dyv5mxv6pj4852lx68grjm7bivhrbfwi";
  })
  (fetchNuGet {
    name = "System.Runtime.Serialization.Formatters";
    version = "4.3.0";
    sha256 = "114j35n8gcvn3sqv9ar36r1jjq0y1yws9r0yk8i6wm4aq7n9rs0m";
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
    version = "4.0.11";
    sha256 = "1pla2dx8gkidf7xkciig6nifdsb494axjvzvann8g2lp3dbqasm9";
  })
  (fetchNuGet {
    name = "runtime.native.System";
    version = "4.0.0";
    sha256 = "1ppk69xk59ggacj9n7g6fyxvzmk1g5p4fkijm0d7xqfkig98qrkf";
  })
  (fetchNuGet {
    name = "runtime.native.System.Security.Cryptography";
    version = "4.0.0";
    sha256 = "0k57aa2c3b10wl3hfqbgrl7xq7g8hh3a3ir44b31dn5p61iiw3z9";
  })
  (fetchNuGet {
    name = "runtime.native.System.Net.Http";
    version = "4.0.1";
    sha256 = "1hgv2bmbaskx77v8glh7waxws973jn4ah35zysnkxmf0196sfxg6";
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
    name = "System.Security.Cryptography.Cng";
    version = "4.2.0";
    sha256 = "118jijz446kix20blxip0f0q8mhsh9bz118mwc2ch1p6g7facpzc";
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
    name = "Microsoft.DotNet.PlatformAbstractions";
    version = "1.0.3";
    sha256 = "1nayc88w80jrmnf3mkq0fk2bjhpgnk59m9yl40d9qfj06bzvckxl";
  })
  (fetchNuGet {
    name = "System.Threading.Thread";
    version = "4.0.0";
    sha256 = "1gxxm5fl36pjjpnx1k688dcw8m9l7nmf802nxis6swdaw8k54jzc";
  })
  (fetchNuGet {
    name = "System.ComponentModel.TypeConverter";
    version = "4.1.0";
    sha256 = "178cva9p1cs043h5n2fry5xkzr3wc9n0hwbxa8m3ymld9m6wcv0y";
  })
  (fetchNuGet {
    name = "System.Diagnostics.TextWriterTraceListener";
    version = "4.0.0";
    sha256 = "1xigiwkwyxak0dhm0p8i2zb7a9syly9cdb5s9zkr9rbad4f2fqhs";
  })
  (fetchNuGet {
    name = "System.Diagnostics.Process";
    version = "4.1.0";
    sha256 = "061lrcs7xribrmq7kab908lww6kn2xn1w3rdc41q189y0jibl19s";
  })
  (fetchNuGet {
    name = "System.Diagnostics.TraceSource";
    version = "4.0.0";
    sha256 = "1mc7r72xznczzf6mz62dm8xhdi14if1h8qgx353xvhz89qyxsa3h";
  })
  (fetchNuGet {
    name = "System.Runtime.Loader";
    version = "4.0.0";
    sha256 = "0lpfi3psqcp6zxsjk2qyahal7zaawviimc8lhrlswhip2mx7ykl0";
  })
  (fetchNuGet {
    name = "System.Reflection.Metadata";
    version = "1.3.0";
    sha256 = "1y5m6kryhjpqqm2g3h3b6bzig13wkiw954x3b7icqjm6xypm1x3b";
  })
  (fetchNuGet {
    name = "System.ComponentModel.EventBasedAsync";
    version = "4.0.11";
    sha256 = "07r5i7xwban347nsfw28hhjwpr78ywksjyhywvhj1yr0s7sr00wh";
  })
  (fetchNuGet {
    name = "System.Xml.XPath.XmlDocument";
    version = "4.0.1";
    sha256 = "0l7yljgif41iv5g56l3nxy97hzzgck2a7rhnfnljhx9b0ry41bvc";
  })
  (fetchNuGet {
    name = "System.Runtime.Serialization.Json";
    version = "4.0.2";
    sha256 = "08ypbzs0sb302ga04ds5b2wxa2gg0q50zpa0nvc87ipjhs0v66dn";
  })
]

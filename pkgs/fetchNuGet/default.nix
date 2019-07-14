{ fetchurl, buildDotnetPackage, unzip }:

attrs @
{ baseName
, version
, url ? "https://www.nuget.org/api/v2/package/${baseName}/${version}"
, sha256 ? ""
, md5 ? ""
, ...
}:
if md5 != "" then
  throw "fetchnuget does not support md5 anymore, please use sha256"
else
  buildDotnetPackage ({
    src = fetchurl {
      inherit url sha256;
      name = "${baseName}.${version}.zip";
    };

    sourceRoot = ".";

    buildInputs = [ unzip ];

    dontBuild = true;

} // attrs)

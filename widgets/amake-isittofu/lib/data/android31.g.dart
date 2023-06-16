final RegExp android31Pattern = RegExp(
  // ignore: valid_regexps
  '[\u0000-\u0019\u0020-\u007e\u0091-\u0094\u009a-\u009b\u009d\u00a0-\u0377\u037a-\u037f\u0384-\u038a\u038c\u038e-\u03a1\u03a3-\u052f\u0531-\u0556\u0559-\u058a\u058d-\u058f\u0591-\u05c7\u05d0-\u05ea\u05f0-\u05f4\u0600-\u0604\u0606-\u061c\u061e-\u070d\u070f-\u074a\u074d-\u07b1\u07c0-\u07fa\u0800-\u082d\u0830-\u083e\u0840-\u085b\u085e\u08a0\u08a2-\u08ac\u08e4-\u08fe\u0900-\u0983\u0985-\u098c\u098f-\u0990\u0993-\u09a8\u09aa-\u09b0\u09b2\u09b6-\u09b9\u09bc-\u09c4\u09c7-\u09c8\u09cb-\u09ce\u09d7\u09dc-\u09dd\u09df-\u09e3\u09e6-\u09fe\u0a01-\u0a03\u0a05-\u0a0a\u0a0f-\u0a10\u0a13-\u0a28\u0a2a-\u0a30\u0a32-\u0a33\u0a35-\u0a36\u0a38-\u0a39\u0a3c\u0a3e-\u0a42\u0a47-\u0a48\u0a4b-\u0a4d\u0a51\u0a59-\u0a5c\u0a5e\u0a66-\u0a76\u0a81-\u0a83\u0a85-\u0a8d\u0a8f-\u0a91\u0a93-\u0aa8\u0aaa-\u0ab0\u0ab2-\u0ab3\u0ab5-\u0ab9\u0abc-\u0ac5\u0ac7-\u0ac9\u0acb-\u0acd\u0ad0\u0ae0-\u0ae3\u0ae6-\u0af1\u0af9-\u0aff\u0b01-\u0b03\u0b05-\u0b0c\u0b0f-\u0b10\u0b13-\u0b28\u0b2a-\u0b30\u0b32-\u0b33\u0b35-\u0b39\u0b3c-\u0b44\u0b47-\u0b48\u0b4b-\u0b4d\u0b56-\u0b57\u0b5c-\u0b5d\u0b5f-\u0b63\u0b66-\u0b77\u0b82-\u0b83\u0b85-\u0b8a\u0b8e-\u0b90\u0b92-\u0b95\u0b99-\u0b9a\u0b9c\u0b9e-\u0b9f\u0ba3-\u0ba4\u0ba8-\u0baa\u0bae-\u0bb9\u0bbe-\u0bc2\u0bc6-\u0bc8\u0bca-\u0bcd\u0bd0\u0bd7\u0be6-\u0bfa\u0c00-\u0c0c\u0c0e-\u0c10\u0c12-\u0c28\u0c2a-\u0c39\u0c3d-\u0c44\u0c46-\u0c48\u0c4a-\u0c4d\u0c55-\u0c56\u0c58-\u0c5a\u0c60-\u0c63\u0c66-\u0c6f\u0c77-\u0c8c\u0c8e-\u0c90\u0c92-\u0ca8\u0caa-\u0cb3\u0cb5-\u0cb9\u0cbc-\u0cc4\u0cc6-\u0cc8\u0cca-\u0ccd\u0cd5-\u0cd6\u0cde\u0ce0-\u0ce3\u0ce6-\u0cef\u0cf1-\u0cf2\u0d00-\u0d0c\u0d0e-\u0d10\u0d12-\u0d44\u0d46-\u0d48\u0d4a-\u0d4f\u0d54-\u0d63\u0d66-\u0d7f\u0d81-\u0d83\u0d85-\u0d96\u0d9a-\u0db1\u0db3-\u0dbb\u0dbd\u0dc0-\u0dc6\u0dca\u0dcf-\u0dd4\u0dd6\u0dd8-\u0ddf\u0de6-\u0def\u0df2-\u0df4\u0e01-\u0e3a\u0e3f-\u0e5b\u0e81-\u0e82\u0e84\u0e87-\u0e88\u0e8a\u0e8d\u0e94-\u0e97\u0e99-\u0e9f\u0ea1-\u0ea3\u0ea5\u0ea7\u0eaa-\u0eab\u0ead-\u0eb9\u0ebb-\u0ebd\u0ec0-\u0ec4\u0ec6\u0ec8-\u0ecd\u0ed0-\u0ed9\u0edc-\u0edf\u0f00-\u0f47\u0f49-\u0f6c\u0f71-\u0f97\u0f99-\u0fbc\u0fbe-\u0fcc\u0fce-\u0fda\u1000-\u10c5\u10c7\u10cd\u10d0-\u1248\u124a-\u124d\u1250-\u1256\u1258\u125a-\u125d\u1260-\u1288\u128a-\u128d\u1290-\u12b0\u12b2-\u12b5\u12b8-\u12be\u12c0\u12c2-\u12c5\u12c8-\u12d6\u12d8-\u1310\u1312-\u1315\u1318-\u135a\u135d-\u137c\u1380-\u1399\u13a0-\u13f5\u13f8-\u13fd\u1400-\u169c\u16a0-\u16f0\u1700-\u170c\u170e-\u1714\u1720-\u1736\u1740-\u1753\u1760-\u176c\u176e-\u1770\u1772-\u1773\u1780-\u17dd\u17e0-\u17e9\u17f0-\u17f9\u1800-\u180e\u1810-\u1819\u1820-\u1877\u1880-\u18aa\u18b0-\u18f5\u1900-\u191c\u1920-\u192b\u1930-\u193b\u1940\u1944-\u196d\u1970-\u1974\u1980-\u19ab\u19b0-\u19c9\u19d0-\u19da\u19de-\u1a1b\u1a1e-\u1a5e\u1a60-\u1a7c\u1a7f-\u1a89\u1a90-\u1a99\u1aa0-\u1aad\u1ab0-\u1abe\u1b00-\u1b4b\u1b50-\u1b7c\u1b80-\u1bf3\u1bfc-\u1c37\u1c3b-\u1c49\u1c4d-\u1c7f\u1c90-\u1cba\u1cbd-\u1cc7\u1cd0-\u1cf9\u1d00-\u1df5\u1dfc-\u1f15\u1f18-\u1f1d\u1f20-\u1f45\u1f48-\u1f4d\u1f50-\u1f57\u1f59\u1f5b\u1f5d\u1f5f-\u1f7d\u1f80-\u1fb4\u1fb6-\u1fc4\u1fc6-\u1fd3\u1fd6-\u1fdb\u1fdd-\u1fef\u1ff2-\u1ff4\u1ff6-\u1ffe\u2000-\u2027\u202a-\u205f\u206a-\u2071\u2074-\u208e\u2090-\u209c\u20a0-\u20bf\u20d0-\u20f0\u2100-\u2189\u2190-\u23f3\u23f8-\u23fa\u2400-\u2426\u2440-\u244a\u2460-\u26ff\u2701-\u2b4c\u2b4e-\u2b5f\u2b95\u2c00-\u2c2e\u2c30-\u2c5e\u2c60-\u2cf3\u2cf9-\u2d25\u2d27\u2d2d\u2d30-\u2d67\u2d6f-\u2d70\u2d7f-\u2d96\u2da0-\u2da6\u2da8-\u2dae\u2db0-\u2db6\u2db8-\u2dbe\u2dc0-\u2dc6\u2dc8-\u2dce\u2dd0-\u2dd6\u2dd8-\u2dde\u2de0-\u2e42\u2e80-\u2e99\u2e9b-\u2ef3\u2f00-\u2fd5\u2ff0-\u2ffb\u3000-\u303f\u3041-\u3096\u3099-\u30ff\u3105-\u312f\u3131-\u318e\u3190-\u31bb\u31c0-\u31e3\u31f0-\u321e\u3220-\u332b\u332d-\u4db5\u4dc0-\u9fef\ua000-\ua48c\ua490-\ua4c6\ua4d0-\ua62b\ua640-\ua69d\ua69f-\ua6f7\ua700-\ua7ad\ua7b0-\ua7b1\ua7f7-\ua82b\ua830-\ua839\ua840-\ua877\ua880-\ua8c4\ua8ce-\ua8d9\ua8e0-\ua953\ua95f-\ua97c\ua980-\ua9cd\ua9cf-\ua9d9\ua9de-\ua9fe\uaa00-\uaa36\uaa40-\uaa4d\uaa50-\uaa59\uaa5c-\uaac2\uaadb-\uaaf6\uab01-\uab06\uab09-\uab0e\uab11-\uab16\uab20-\uab26\uab28-\uab2e\uab30-\uab5f\uab64-\uab65\uab70-\uabed\uabf0-\uabf9\uac00-\ud7a3\ud7b0-\ud7c6\ud7cb-\ud7fb\ue000\uee01-\uee02\uf6c3\uf900-\ufa6d\ufb00-\ufb06\ufb13-\ufb17\ufb1d-\ufb36\ufb38-\ufb3c\ufb3e\ufb40-\ufb41\ufb43-\ufb44\ufb46-\ufbc1\ufbd3-\ufd3f\ufd50-\ufd8f\ufd92-\ufdc7\ufdf0-\ufdfd\ufe00\ufe10-\ufe19\ufe20-\ufe2d\ufe30-\ufe52\ufe54-\ufe66\ufe68-\ufe6b\ufe70-\ufe74\ufe76-\ufefc\ufeff\uff01-\uffbe\uffc2-\uffc7\uffca-\uffcf\uffd2-\uffd7\uffda-\uffdc\uffe0-\uffe6\uffe8-\uffee\ufffc-\ufffd\u{10000}-\u{1000b}\u{1000d}-\u{10026}\u{10028}-\u{1003a}\u{1003c}-\u{1003d}\u{1003f}-\u{1004d}\u{10050}-\u{1005d}\u{10080}-\u{100fa}\u{10100}-\u{10102}\u{10107}-\u{10133}\u{10137}-\u{1018a}\u{10190}-\u{1019b}\u{101d0}-\u{101fd}\u{10280}-\u{1029c}\u{102a0}-\u{102d0}\u{10300}-\u{1031e}\u{10320}-\u{10323}\u{10330}-\u{1034a}\u{10350}-\u{1037a}\u{10380}-\u{1039d}\u{1039f}-\u{103c3}\u{103c8}-\u{103d5}\u{10400}-\u{1049d}\u{104a0}-\u{104a9}\u{104b0}-\u{104d3}\u{104d8}-\u{104fb}\u{10500}-\u{10527}\u{10600}-\u{10736}\u{10740}-\u{10755}\u{10760}-\u{10767}\u{10800}-\u{10805}\u{10808}\u{1080a}-\u{10835}\u{10837}-\u{10838}\u{1083c}\u{1083f}-\u{10855}\u{10857}-\u{1089e}\u{108a7}-\u{108af}\u{108e0}-\u{108f2}\u{108f4}-\u{108f5}\u{108fb}-\u{1091b}\u{1091f}-\u{10939}\u{1093f}\u{10980}-\u{109b7}\u{109bc}-\u{109cf}\u{109d2}-\u{10a03}\u{10a05}-\u{10a06}\u{10a0c}-\u{10a13}\u{10a15}-\u{10a17}\u{10a19}-\u{10a33}\u{10a38}-\u{10a3a}\u{10a3f}-\u{10a47}\u{10a50}-\u{10a58}\u{10a60}-\u{10a9f}\u{10ac0}-\u{10ae6}\u{10aeb}-\u{10af6}\u{10b00}-\u{10b35}\u{10b39}-\u{10b55}\u{10b58}-\u{10b72}\u{10b78}-\u{10b7f}\u{10c00}-\u{10c48}\u{10d00}-\u{10d27}\u{10d30}-\u{10d39}\u{10e80}-\u{10ea9}\u{10eab}-\u{10ead}\u{10eb0}-\u{10eb1}\u{11000}-\u{1104d}\u{11052}-\u{1106f}\u{11080}-\u{110c1}\u{110d0}-\u{110e8}\u{110f0}-\u{110f9}\u{11100}-\u{11134}\u{11136}-\u{11146}\u{11180}-\u{111cd}\u{111d0}-\u{111df}\u{111e1}-\u{111f4}\u{11200}-\u{11211}\u{11213}-\u{1123e}\u{11280}-\u{11286}\u{11288}\u{1128a}-\u{1128d}\u{1128f}-\u{1129d}\u{1129f}-\u{112a9}\u{11300}-\u{11303}\u{11305}-\u{1130c}\u{1130f}-\u{11310}\u{11313}-\u{11328}\u{1132a}-\u{11330}\u{11332}-\u{11333}\u{11335}-\u{11339}\u{1133b}-\u{11344}\u{11347}-\u{11348}\u{1134b}-\u{1134d}\u{11350}\u{11357}\u{1135d}-\u{11363}\u{11366}-\u{1136c}\u{11370}-\u{11374}\u{11400}-\u{11459}\u{1145b}\u{1145d}\u{11600}-\u{11644}\u{11650}-\u{11659}\u{11680}-\u{116b8}\u{116c0}-\u{116c9}\u{11700}-\u{11719}\u{1171d}-\u{1172b}\u{11730}-\u{1173f}\u{11800}-\u{1183b}\u{118a0}-\u{118f2}\u{118ff}\u{11a50}-\u{11aa2}\u{11ac0}-\u{11af8}\u{11c00}-\u{11c08}\u{11c0a}-\u{11c36}\u{11c38}-\u{11c45}\u{11c50}-\u{11c6c}\u{11c70}-\u{11c8f}\u{11c92}-\u{11ca7}\u{11ca9}-\u{11cb6}\u{11d00}-\u{11d06}\u{11d08}-\u{11d09}\u{11d0b}-\u{11d36}\u{11d3a}\u{11d3c}-\u{11d3d}\u{11d3f}-\u{11d47}\u{11d50}-\u{11d59}\u{11d60}-\u{11d65}\u{11d67}-\u{11d68}\u{11d6a}-\u{11d8e}\u{11d90}-\u{11d91}\u{11d93}-\u{11d98}\u{11da0}-\u{11da9}\u{12000}-\u{1236e}\u{12400}-\u{12462}\u{12470}-\u{12473}\u{13000}-\u{1342e}\u{14400}-\u{14646}\u{16800}-\u{16a38}\u{16a40}-\u{16a5e}\u{16a60}-\u{16a69}\u{16a6e}-\u{16a6f}\u{16ad0}-\u{16aed}\u{16af0}-\u{16af5}\u{16b00}-\u{16b45}\u{16b50}-\u{16b59}\u{16b5b}-\u{16b61}\u{16b63}-\u{16b77}\u{16b7d}-\u{16b8f}\u{16e40}-\u{16e9a}\u{16f00}-\u{16f44}\u{16f50}-\u{16f7e}\u{16f8f}-\u{16f9f}\u{1d000}-\u{1d0f5}\u{1d100}-\u{1d126}\u{1d129}-\u{1d1dd}\u{1d200}-\u{1d245}\u{1d300}-\u{1d356}\u{1d360}-\u{1d371}\u{1d400}-\u{1d454}\u{1d456}-\u{1d49c}\u{1d49e}-\u{1d49f}\u{1d4a2}\u{1d4a5}-\u{1d4a6}\u{1d4a9}-\u{1d4ac}\u{1d4ae}-\u{1d4b9}\u{1d4bb}\u{1d4bd}-\u{1d4c3}\u{1d4c5}-\u{1d505}\u{1d507}-\u{1d50a}\u{1d50d}-\u{1d514}\u{1d516}-\u{1d51c}\u{1d51e}-\u{1d539}\u{1d53b}-\u{1d53e}\u{1d540}-\u{1d544}\u{1d546}\u{1d54a}-\u{1d550}\u{1d552}-\u{1d6a5}\u{1d6a8}-\u{1d7cb}\u{1d7ce}-\u{1d7ff}\u{1e100}-\u{1e12c}\u{1e130}-\u{1e13d}\u{1e140}-\u{1e149}\u{1e14e}-\u{1e14f}\u{1e2c0}-\u{1e2f9}\u{1e2ff}\u{1e900}-\u{1e94b}\u{1e950}-\u{1e959}\u{1e95e}-\u{1e95f}\u{1f000}-\u{1f02b}\u{1f030}-\u{1f093}\u{1f0a0}-\u{1f0ae}\u{1f0b1}-\u{1f0be}\u{1f0c1}-\u{1f0cf}\u{1f0d1}-\u{1f0df}\u{1f100}-\u{1f10c}\u{1f110}-\u{1f16c}\u{1f170}-\u{1f1ac}\u{1f1e6}-\u{1f202}\u{1f210}-\u{1f23b}\u{1f240}-\u{1f248}\u{1f250}-\u{1f251}\u{1f300}-\u{1f321}\u{1f324}-\u{1f393}\u{1f396}-\u{1f397}\u{1f399}-\u{1f39b}\u{1f39e}-\u{1f3f0}\u{1f3f3}-\u{1f3f5}\u{1f3f7}-\u{1f4fd}\u{1f4ff}-\u{1f53d}\u{1f549}-\u{1f54e}\u{1f550}-\u{1f567}\u{1f56f}-\u{1f570}\u{1f573}-\u{1f57a}\u{1f587}\u{1f58a}-\u{1f58d}\u{1f590}\u{1f595}-\u{1f596}\u{1f5a4}-\u{1f5a5}\u{1f5a8}\u{1f5b1}-\u{1f5b2}\u{1f5bc}\u{1f5c2}-\u{1f5c4}\u{1f5d1}-\u{1f5d3}\u{1f5dc}-\u{1f5de}\u{1f5e1}\u{1f5e3}\u{1f5e8}\u{1f5ef}\u{1f5f3}\u{1f5fa}-\u{1f64f}\u{1f680}-\u{1f6c5}\u{1f6cb}-\u{1f6d2}\u{1f6d5}-\u{1f6d7}\u{1f6e0}-\u{1f6e5}\u{1f6e9}\u{1f6eb}-\u{1f6ec}\u{1f6f0}\u{1f6f3}-\u{1f6fc}\u{1f700}-\u{1f773}\u{1f7e0}-\u{1f7eb}\u{1f90c}-\u{1f93a}\u{1f93c}-\u{1f945}\u{1f947}-\u{1f978}\u{1f97a}-\u{1f9cb}\u{1f9cd}-\u{1f9ff}\u{1fa70}-\u{1fa74}\u{1fa78}-\u{1fa7a}\u{1fa80}-\u{1fa86}\u{1fa90}-\u{1faa8}\u{1fab0}-\u{1fab6}\u{1fac0}-\u{1fac2}\u{1fad0}-\u{1fad6}\u{2000b}\u{20021}\u{20024}\u{2003e}\u{20046}\u{2004e}\u{20068}\u{20086}-\u{20087}\u{20089}-\u{2008a}\u{20094}\u{200a2}\u{200a4}\u{200b0}\u{200ca}-\u{200cd}\u{200d1}\u{200d7}\u{200ee}\u{200f5}\u{2010c}\u{2010e}\u{20118}\u{2012c}\u{20158}\u{20164}\u{201a2}\u{201a4}\u{201a9}\u{201ab}\u{201c1}\u{201d4}\u{201f2}\u{20204}\u{2020c}\u{20213}-\u{20214}\u{20239}\u{2025b}\u{20274}-\u{20275}\u{2028e}\u{20299}\u{2029e}\u{202a0}\u{202b7}\u{202bf}-\u{202c0}\u{202e5}\u{2030a}\u{20325}\u{2032b}\u{20341}\u{20345}-\u{20347}\u{20371}\u{2037e}-\u{20381}\u{203a0}\u{203a7}\u{203b5}\u{203c9}\u{203cb}\u{203f5}\u{203f9}\u{203fc}\u{20413}-\u{20414}\u{2041f}\u{2042d}\u{2044a}\u{20465}\u{20487}\u{2048e}\u{20491}-\u{20492}\u{204a3}\u{204d7}\u{204fc}\u{204fe}\u{20509}\u{2053f}\u{20547}\u{2058e}\u{205a5}\u{205b1}\u{205b3}\u{205c3}\u{205ca}\u{205d0}\u{205d5}-\u{205d6}\u{205df}-\u{205e0}\u{205eb}\u{20611}\u{20615}\u{20619}-\u{2061a}\u{20628}\u{20630}\u{20656}\u{20676}\u{206ec}\u{2070e}\u{20731}\u{2074f}\u{20779}\u{207c8}\u{20807}\u{2082c}\u{2083a}\u{20873}\u{208b9}\u{208d5}\u{2090e}\u{20916}\u{20923}\u{20954}\u{20979}\u{2097c}\u{20984}\u{2099d}\u{209e7}\u{20a11}\u{20a50}\u{20a64}\u{20a6f}\u{20a8a}\u{20ab4}\u{20ac2}\u{20acd}\u{20ad3}\u{20b0d}\u{20b1d}\u{20b8f}\u{20b9f}\u{20ba8}-\u{20ba9}\u{20bb7}\u{20bbf}\u{20bc6}\u{20bcb}\u{20be2}\u{20beb}\u{20bfb}\u{20bff}\u{20c0b}\u{20c0d}\u{20c20}\u{20c34}\u{20c3a}-\u{20c3b}\u{20c41}-\u{20c43}\u{20c53}\u{20c65}\u{20c77}-\u{20c78}\u{20c7c}\u{20c8d}\u{20c96}\u{20c9c}\u{20cb5}\u{20cb8}\u{20ccf}-\u{20cd0}\u{20cd3}-\u{20cd6}\u{20cdd}\u{20ced}\u{20cff}\u{20d15}\u{20d28}\u{20d31}-\u{20d32}\u{20d45}-\u{20d49}\u{20d4c}-\u{20d4e}\u{20d58}\u{20d6f}\u{20d71}\u{20d74}\u{20d7c}\u{20d7e}-\u{20d7f}\u{20d96}\u{20d9c}\u{20da7}\u{20db2}\u{20dc8}\u{20de1}\u{20e04}\u{20e09}-\u{20e0a}\u{20e0d}-\u{20e11}\u{20e16}\u{20e1d}\u{20e4c}\u{20e64}\u{20e6d}\u{20e73}\u{20e75}-\u{20e7b}\u{20e8c}\u{20e95}-\u{20e96}\u{20e98}\u{20e9d}\u{20ea2}\u{20eaa}-\u{20eac}\u{20eb6}\u{20ed7}-\u{20ed8}\u{20edd}\u{20ef8}-\u{20efb}\u{20f1d}\u{20f26}\u{20f2d}-\u{20f2e}\u{20f30}-\u{20f31}\u{20f3b}\u{20f4c}\u{20f5f}\u{20f64}\u{20f8d}\u{20f90}\u{20fad}\u{20fb4}-\u{20fb6}\u{20fbc}\u{20fdf}\u{20fea}-\u{20fed}\u{21014}\u{2101d}-\u{2101e}\u{2104f}\u{2105c}\u{2106f}\u{21075}-\u{21078}\u{2107b}\u{21088}\u{21096}\u{2109d}\u{210b4}\u{210bf}-\u{210c1}\u{210c7}-\u{210c9}\u{210cf}\u{210d3}\u{210e4}\u{210f4}-\u{210f6}\u{2112f}\u{2113b}\u{2113d}\u{21145}\u{21148}\u{2114f}\u{21155}\u{21180}\u{21187}\u{211d9}\u{21201}\u{2123c}-\u{2123d}\u{2124f}\u{21255}\u{21274}\u{2127b}-\u{2127c}\u{2128d}\u{212a8}-\u{212a9}\u{212b0}\u{212d7}\u{212e3}-\u{212e4}\u{212fd}-\u{212fe}\u{21302}-\u{21305}\u{2131b}\u{21336}\u{2133a}\u{21344}\u{21375}-\u{21376}\u{2138e}\u{21398}\u{2139a}\u{2139c}\u{213c4}-\u{213c6}\u{213ed}\u{213fe}\u{21413}\u{21416}\u{21424}\u{2143f}\u{21452}\u{21454}-\u{21455}\u{2146d}-\u{2146e}\u{2148a}\u{21497}\u{214b6}\u{214e8}\u{214fd}\u{21577}\u{21582}\u{21594}\u{21596}\u{215d7}\u{2160a}\u{21613}\u{21619}\u{2163e}\u{21647}\u{21661}\u{21692}\u{216b4}\u{216b8}\u{216ba}\u{216c0}-\u{216c2}\u{216d3}\u{216d5}\u{216df}\u{216e6}-\u{216e8}\u{216fa}-\u{216fc}\u{216fe}\u{21706}\u{2170d}\u{21710}\u{21726}-\u{21727}\u{2173a}-\u{2173c}\u{21742}\u{21757}\u{2176c}-\u{21771}\u{21773}-\u{21774}\u{217ab}\u{217b0}-\u{217b5}\u{217c3}\u{217c7}\u{217d9}-\u{217dc}\u{217df}\u{217ef}\u{217f5}-\u{217f6}\u{217f8}-\u{217fc}\u{21820}\u{21828}-\u{2182a}\u{2182d}\u{21839}-\u{2183b}\u{21840}\u{21845}\u{21852}\u{2185e}\u{21861}-\u{21864}\u{21877}\u{2187b}\u{21883}-\u{21885}\u{2189e}-\u{218a2}\u{218bd}-\u{218bf}\u{218d1}\u{218d6}-\u{218d9}\u{218fa}\u{21903}-\u{21905}\u{21910}-\u{21912}\u{21915}\u{2191c}\u{21922}\u{21927}\u{2193b}\u{21944}\u{21958}\u{2196a}\u{2197c}\u{21980}\u{21983}\u{21988}\u{21996}\u{219c3}\u{219db}\u{219f3}\u{21a1a}\u{21a2d}\u{21a34}\u{21a45}\u{21a4b}\u{21a63}\u{21b44}\u{21bc1}-\u{21bc2}\u{21c2a}\u{21c56}\u{21c70}\u{21ca2}\u{21ca5}\u{21cac}\u{21d2d}\u{21d45}-\u{21d46}\u{21d53}\u{21d5e}\u{21d62}\u{21d78}\u{21d90}\u{21d92}\u{21d9c}\u{21da1}\u{21db6}-\u{21db7}\u{21dba}\u{21dca}\u{21dd1}\u{21de0}\u{21deb}\u{21df9}\u{21e1c}\u{21e23}\u{21e33}-\u{21e34}\u{21e37}\u{21e3d}\u{21e89}\u{21ea4}\u{21ea8}\u{21ec8}\u{21ed5}\u{21f0f}\u{21f15}\u{21f1e}\u{21f5c}\u{21f6a}\u{21f76}\u{21f9e}\u{21fa1}\u{21fe8}\u{21ffa}\u{22045}\u{22049}\u{2207e}\u{2209a}\u{220c7}\u{220fc}\u{2212a}\u{2215b}\u{22173}\u{2217a}-\u{2217b}\u{221a1}\u{221c1}\u{221c3}\u{22208}\u{22218}\u{2227c}\u{2231e}\u{22321}\u{22325}\u{223ad}\u{223bd}\u{223d0}\u{223d7}\u{223fa}\u{22465}\u{22471}\u{2248b}\u{22491}\u{224b0}\u{224bc}\u{224c1}\u{224c9}\u{224cc}\u{224e1}\u{224ed}\u{22513}\u{2251b}\u{22530}\u{22554}\u{2258d}\u{225af}\u{225be}\u{22609}\u{2261b}-\u{2261c}\u{2262b}\u{22668}\u{2267a}\u{22696}\u{22698}\u{226f3}-\u{226f6}\u{22712}\u{22714}\u{2271b}\u{2271f}\u{2272a}\u{22775}\u{22781}\u{22796}\u{227b4}-\u{227b5}\u{227cd}\u{22803}\u{2285b}\u{2285f}-\u{22860}\u{22871}\u{228ab}\u{228ad}\u{228c1}\u{228f7}\u{22926}\u{22939}\u{2294f}\u{22967}\u{2296b}\u{22980}\u{2298f}\u{22993}\u{22a66}\u{22ab8}\u{22acf}\u{22ad5}\u{22ae6}\u{22ae8}\u{22b0e}\u{22b22}\u{22b3f}\u{22b43}\u{22b46}\u{22b4f}-\u{22b50}\u{22b6a}\u{22ba6}\u{22bca}\u{22bce}\u{22c1d}\u{22c24}\u{22c26}-\u{22c27}\u{22c38}\u{22c4c}\u{22c51}\u{22c55}\u{22c62}\u{22c6f}\u{22c88}\u{22c9b}\u{22ca1}\u{22ca9}\u{22cb2}\u{22cb7}\u{22cc2}\u{22cc6}\u{22cc9}\u{22d07}-\u{22d08}\u{22d12}\u{22d44}\u{22d4c}\u{22d67}\u{22d8d}\u{22d95}\u{22da0}\u{22da3}-\u{22da4}\u{22db7}\u{22de1}\u{22dee}\u{22e0d}\u{22e36}\u{22e42}\u{22e78}\u{22e8b}\u{22eb3}\u{22ee0}\u{22eef}\u{22f74}\u{22fcc}\u{22fe3}\u{22feb}\u{23033}\u{23044}\u{2304b}\u{23066}\u{2307d}-\u{2307e}\u{2308e}\u{230b7}\u{230bc}\u{230da}\u{230fd}\u{23103}\u{2313d}\u{2317d}\u{23182}\u{231a4}-\u{231a5}\u{231b3}\u{231b6}\u{231c3}-\u{231c4}\u{231c8}-\u{231c9}\u{231ea}\u{231f5}\u{231f7}-\u{231f9}\u{2320f}\u{23225}\u{2322f}\u{23231}-\u{23234}\u{23256}\u{2325e}\u{23262}\u{23281}\u{23289}-\u{2328a}\u{232ab}-\u{232ad}\u{232d2}\u{232e0}-\u{232e1}\u{23300}\u{2330a}\u{2331f}\u{23343}\u{23372}\u{233b4}\u{233cc}\u{233d0}\u{233d2}-\u{233d3}\u{233d5}\u{233da}\u{233de}-\u{233df}\u{233e4}\u{233e6}\u{233f4}-\u{233f5}\u{233f9}-\u{233fa}\u{233fe}\u{23400}\u{2343f}\u{2344a}-\u{2344b}\u{23450}-\u{23451}\u{23465}\u{2346f}\u{23472}\u{234e4}-\u{234e5}\u{23519}\u{23530}\u{23551}\u{2355a}\u{23567}\u{23584}\u{23594}-\u{23595}\u{23599}\u{2359c}\u{235bb}\u{235c4}\u{235cb}\u{235cd}-\u{235cf}\u{235f3}\u{23600}\u{23617}\u{2361a}\u{23638}-\u{2363c}\u{23640}\u{23647}\u{23659}\u{2365f}\u{23677}\u{2368e}\u{2369e}\u{236a6}\u{236ad}\u{236ba}\u{236df}\u{236ee}\u{23703}\u{2370c}\u{23716}\u{2371c}\u{23720}\u{2372d}\u{2372f}\u{2373f}\u{23763}-\u{23764}\u{23766}\u{23781}\u{237a2}\u{237bc}\u{237c2}\u{237d5}-\u{237d7}\u{237e7}\u{237f1}\u{237ff}\u{23824}\u{2383a}\u{2383d}\u{239c2}\u{23a98}\u{23aa7}\u{23ad9}\u{23adb}\u{23aee}\u{23afa}\u{23b1a}\u{23b5a}\u{23c63}\u{23c7f}\u{23c97}-\u{23c9b}\u{23cb5}\u{23cb7}\u{23cbe}\u{23cc7}-\u{23cc9}\u{23cfc}-\u{23d00}\u{23d0e}\u{23d18}\u{23d40}\u{23d5b}\u{23d7e}\u{23d8f}\u{23db6}-\u{23dbd}\u{23dd3}\u{23de3}\u{23df8}-\u{23dfa}\u{23e06}\u{23e11}\u{23e23}\u{23e2c}-\u{23e31}\u{23e39}\u{23e88}-\u{23e8b}\u{23eb9}\u{23ebf}\u{23ed7}\u{23ef7}-\u{23efc}\u{23f35}\u{23f41}\u{23f4a}\u{23f61}\u{23f7e}-\u{23f82}\u{23f8f}\u{23fb4}\u{23fb7}\u{23fc0}\u{23fc5}\u{23feb}-\u{23ff0}\u{24011}\u{24039}-\u{2403d}\u{2404b}\u{24057}\u{24085}\u{2408b}-\u{2408d}\u{24091}\u{24096}\u{240c9}\u{240e1}\u{240ec}\u{24103}-\u{24104}\u{2410f}\u{24119}\u{2413f}-\u{24140}\u{24144}\u{2414e}\u{24155}-\u{24157}\u{2415c}\u{2415f}\u{24161}\u{24177}\u{2417a}\u{241a3}-\u{241a5}\u{241ac}\u{241b5}\u{241c6}\u{241cd}\u{241e2}\u{241fc}\u{241fe}\u{2420e}\u{2421b}\u{2424b}\u{24256}\u{24259}\u{24276}-\u{24278}\u{24284}\u{24293}\u{24295}\u{242a5}\u{242bf}\u{242c1}\u{242c9}-\u{242ca}\u{242ee}\u{242f1}\u{242fa}\u{2430d}\u{2431a}\u{24334}\u{24348}\u{24362}-\u{24365}\u{2438c}\u{24396}\u{2439c}-\u{2439d}\u{243bc}-\u{243bd}\u{243c1}\u{243d0}\u{243e9}-\u{243ea}\u{243f2}\u{243f8}\u{24404}\u{24435}-\u{24436}\u{2445a}-\u{2445b}\u{24473}\u{24487}-\u{24488}\u{244b9}\u{244bc}\u{244ce}\u{244d3}\u{244d6}\u{24505}\u{24521}\u{24578}\u{245c8}\u{24618}\u{24629}-\u{2462a}\u{24665}\u{24674}\u{24697}\u{246a5}\u{246d4}\u{24706}\u{24725}\u{2472f}\u{2478f}\u{247e0}\u{247f1}\u{24812}\u{24823}\u{24882}\u{24896}\u{248e9}\u{248f0}-\u{248f3}\u{248fb}\u{248ff}-\u{24901}\u{2490c}\u{24916}-\u{24917}\u{24919}\u{2492f}\u{24933}-\u{24934}\u{2493e}-\u{24943}\u{24962}-\u{24963}\u{24974}-\u{24976}\u{2497b}\u{2497f}\u{24982}\u{24988}-\u{2498f}\u{24994}\u{249a4}\u{249a7}\u{249a9}\u{249ab}-\u{249ad}\u{249b7}-\u{249bb}\u{249c5}\u{249d0}\u{249da}-\u{249db}\u{249de}-\u{249df}\u{249e3}\u{249e5}\u{249ec}-\u{249ed}\u{249f6}-\u{249f9}\u{249fb}\u{24a01}\u{24a0e}\u{24a12}-\u{24a13}\u{24a15}\u{24a21}-\u{24a2a}\u{24a3e}\u{24a42}\u{24a45}\u{24a4a}\u{24a4d}-\u{24a51}\u{24a5d}\u{24a65}-\u{24a67}\u{24a71}\u{24a77}-\u{24a7a}\u{24a7d}\u{24a8c}\u{24a93}-\u{24a96}\u{24aa4}-\u{24aa7}\u{24ab1}-\u{24ab3}\u{24aba}-\u{24abc}\u{24ac0}\u{24ac7}\u{24ac9}-\u{24aca}\u{24ad1}\u{24adf}\u{24ae2}\u{24ae9}\u{24b0f}\u{24b56}\u{24b6e}-\u{24b6f}\u{24bf5}\u{24c09}\u{24c16}\u{24c9e}-\u{24c9f}\u{24cc9}\u{24cd9}\u{24d06}\u{24d13}-\u{24d14}\u{24db8}\u{24dea}-\u{24deb}\u{24e04}\u{24e0e}\u{24e37}\u{24e3b}\u{24e50}\u{24e6a}\u{24e8b}\u{24ea5}\u{24ea7}\u{24f0e}\u{24f5c}\u{24f82}\u{24f86}\u{24f97}\u{24f9a}\u{24fa9}\u{24fb8}\u{24fc2}\u{24ff2}\u{2502c}\u{2504a}\u{25052}\u{25055}\u{2509d}\u{25122}\u{2512b}\u{25148}\u{2517d}-\u{2517e}\u{251a9}\u{251cd}\u{251e3}\u{251e5}-\u{251e7}\u{2521e}\u{25220}-\u{25221}\u{2524c}\u{25250}\u{25299}\u{252c7}\u{252d8}\u{2530e}\u{25311}\u{25313}\u{2533e}\u{253b5}\u{253fe}\u{25419}\u{25425}\u{2542e}-\u{25430}\u{25446}\u{2546c}\u{2546e}\u{2548e}\u{2549a}\u{254d9}\u{2550e}\u{25531}-\u{25532}\u{25535}\u{2553f}\u{2555b}-\u{2555e}\u{25562}\u{25565}-\u{25566}\u{25581}\u{25584}\u{2558f}\u{255a7}-\u{255a8}\u{255b9}\u{255d5}\u{255db}\u{255e0}\u{25605}\u{25635}\u{25651}\u{2567f}\u{25683}\u{25695}\u{256e3}\u{256f6}\u{25706}\u{2571d}\u{25725}\u{2573d}\u{25771}-\u{25772}\u{257a9}\u{257b4}\u{257c7}\u{257df}-\u{257e1}\u{25832}\u{2583a}\u{25857}\u{2585d}\u{25872}\u{25874}\u{258c8}\u{258de}\u{258e1}\u{25903}\u{25946}\u{25956}\u{25978}\u{259ac}\u{259c4}\u{259cc}\u{259d4}\u{25a54}\u{25a95}\u{25a9c}\u{25aae}-\u{25aaf}\u{25ad7}\u{25ae3}-\u{25ae4}\u{25ae9}\u{25af1}\u{25b74}\u{25b89}\u{25b97}\u{25bb2}-\u{25bb4}\u{25bc6}\u{25be4}\u{25be8}\u{25c01}\u{25c06}\u{25c21}\u{25c4a}-\u{25c4b}\u{25c64}-\u{25c65}\u{25c91}\u{25ca4}\u{25cc0}-\u{25cc1}\u{25cfe}\u{25d20}\u{25d30}\u{25d43}\u{25d99}\u{25da1}\u{25db9}\u{25e0e}\u{25e2e}\u{25e44}\u{25e49}\u{25e56}\u{25e62}\u{25e65}\u{25e81}-\u{25e83}\u{25ea6}\u{25ebc}\u{25ec2}\u{25ed7}-\u{25ed8}\u{25ee8}\u{25f1a}\u{25f23}\u{25f4b}\u{25f5c}\u{25fd4}\u{25fe0}-\u{25fe2}\u{25ffb}\u{2600c}\u{26017}\u{26021}\u{26029}\u{26048}\u{26057}\u{26060}\u{26064}\u{26083}\u{26097}\u{260a4}-\u{260a5}\u{260ed}\u{26102}\u{26121}\u{26159}-\u{2615c}\u{261ad}-\u{261ae}\u{261b2}\u{261dd}\u{26221}-\u{26222}\u{26258}\u{26261}\u{2626a}-\u{2626b}\u{26270}\u{26286}\u{262d0}\u{26335}\u{2634b}-\u{2634c}\u{26351}\u{263be}\u{263f5}\u{263f8}\u{26402}\u{26410}-\u{26412}\u{2644a}\u{26469}\u{26484}\u{26488}-\u{26489}\u{2648d}\u{26498}\u{26512}\u{26572}\u{265a0}\u{265a4}\u{265ad}\u{265bf}\u{26612}\u{26626}\u{26676}\u{2667e}\u{266af}-\u{266b1}\u{266b5}\u{266da}\u{266e8}\u{266fc}\u{26716}\u{2671d}\u{26741}\u{2677c}\u{26799}\u{267b3}-\u{267b4}\u{267cc}\u{267d8}\u{2681c}\u{26846}\u{2685e}\u{2686e}\u{26888}\u{2688a}\u{26893}\u{268c7}\u{268dd}\u{268ea}\u{2690e}\u{26911}\u{26926}\u{26939}\u{26951}\u{2696f}\u{26999}\u{269a8}\u{269b5}\u{269dd}\u{269f2}\u{269fa}\u{26a1e}\u{26a2d}-\u{26a2e}\u{26a34}\u{26a42}\u{26a51}-\u{26a52}\u{26a58}\u{26a8c}\u{26ab7}\u{26aff}\u{26b05}\u{26b0a}\u{26b13}\u{26b15}\u{26b23}\u{26b28}\u{26b50}-\u{26b53}\u{26b5b}-\u{26b5c}\u{26b75}\u{26b82}\u{26b96}-\u{26b97}\u{26b9d}\u{26bb3}\u{26bc0}\u{26bf7}\u{26c21}\u{26c29}\u{26c40}-\u{26c41}\u{26c46}\u{26c73}\u{26c7e}-\u{26c82}\u{26c9e}\u{26ca4}\u{26cb7}-\u{26cb8}\u{26cbd}\u{26cc0}\u{26cc3}\u{26cd1}\u{26cdd}\u{26d22}-\u{26d2a}\u{26d51}\u{26d74}\u{26da0}-\u{26da7}\u{26dae}\u{26ddc}\u{26dea}-\u{26deb}\u{26df0}\u{26e00}\u{26e05}\u{26e07}\u{26e12}\u{26e40}\u{26e42}-\u{26e45}\u{26e65}\u{26e6e}\u{26e72}\u{26e77}\u{26e84}\u{26e88}\u{26e8b}\u{26e99}\u{26ed0}-\u{26ed7}\u{26f26}\u{26f73}-\u{26f74}\u{26f94}\u{26f9f}\u{26fa1}\u{26fbe}\u{26fde}-\u{26fdf}\u{26ff6}-\u{26ff8}\u{2700e}\u{2704b}\u{27052}-\u{27053}\u{27088}\u{270ad}-\u{270af}\u{270cd}\u{270d2}\u{270f0}\u{270f4}\u{270f8}\u{27109}\u{2710c}-\u{2710d}\u{27126}-\u{27127}\u{27139}\u{27144}\u{27164}-\u{27165}\u{27175}\u{271cd}\u{2721b}\u{27267}\u{27280}\u{27285}\u{2728b}\u{272b2}\u{272b6}\u{272e6}\u{27352}\u{2739a}\u{273da}-\u{273db}\u{273fe}-\u{273ff}\u{27410}\u{27422}\u{27449}\u{27450}\u{27484}\u{27486}\u{274bd}\u{27574}\u{275a3}\u{275e0}\u{275e4}\u{275fd}-\u{275ff}\u{27607}\u{2760c}\u{27614}-\u{27615}\u{27625}\u{27631}-\u{27632}\u{27639}\u{27655}-\u{27657}\u{27684}\u{27693}-\u{27694}\u{2770e}-\u{2770f}\u{27723}\u{27735}-\u{27736}\u{27741}\u{27752}\u{2775e}\u{27784}-\u{27785}\u{277cc}\u{27858}\u{27870}\u{2789d}\u{278b2}\u{278c8}\u{27924}\u{27967}\u{2797a}\u{27985}\u{279a0}\u{279b4}\u{279dd}\u{279fd}\u{27a0a}\u{27a0e}\u{27a3e}\u{27a51}\u{27a53}\u{27a59}\u{27a79}\u{27a84}\u{27abd}-\u{27abe}\u{27af4}\u{27b02}\u{27b06}\u{27b0b}\u{27b18}\u{27b38}-\u{27b3a}\u{27b48}\u{27b65}\u{27bb3}\u{27bbe}\u{27bc7}\u{27bef}\u{27bf4}\u{27c12}\u{27c3c}\u{27c6c}\u{27cb1}\u{27cb8}\u{27cc5}\u{27cef}\u{27d2f}\u{27d53}-\u{27d54}\u{27d66}\u{27d73}\u{27d84}\u{27d8f}\u{27d98}\u{27da0}\u{27dbd}\u{27ddc}\u{27e10}\u{27e4d}\u{27e4f}\u{27e7d}\u{27eaf}\u{27f1b}\u{27f2e}\u{27fb7}\u{27ff9}\u{28002}\u{28009}\u{2801e}\u{28023}-\u{28024}\u{28048}\u{28083}\u{2808a}\u{28090}\u{280bb}\u{280bd}-\u{280be}\u{280e8}-\u{280e9}\u{280f4}\u{2812e}\u{2814f}\u{2815d}\u{2816f}\u{28189}\u{281af}\u{281bc}\u{28207}\u{28218}\u{2821a}\u{28256}\u{28277}\u{2827c}\u{28282}\u{2829b}\u{282cd}\u{282e2}\u{282f3}\u{28306}\u{28318}\u{2832f}\u{2833a}\u{28365}\u{2836d}\u{2837d}\u{2838a}\u{283cd}\u{283f6}\u{28408}\u{2840c}\u{28412}\u{28455}\u{28468}\u{2846c}\u{28473}\u{28482}\u{284dc}\u{28501}\u{2853c}-\u{2853d}\u{2856b}-\u{2856c}\u{285c8}-\u{285c9}\u{285e8}\u{285f4}\u{28600}\u{2860b}\u{28625}\u{2863b}\u{28678}\u{28695}\u{286aa}-\u{286ab}\u{286b2}\u{286bc}\u{286d7}-\u{286d8}\u{286e6}\u{286fa}\u{2870f}\u{28713}\u{287e0}\u{28804}\u{2882b}\u{2890d}\u{28933}\u{28946}\u{28948}-\u{28949}\u{28956}\u{28964}\u{28968}\u{2896b}-\u{2896d}\u{2897e}\u{28987}-\u{28989}\u{289a8}\u{289aa}-\u{289ab}\u{289b8}\u{289ba}-\u{289bc}\u{289c0}\u{289dc}\u{289de}\u{289e1}\u{289e3}-\u{289e4}\u{289e7}-\u{289e8}\u{289f9}-\u{289fc}\u{28a0f}\u{28a16}\u{28a1e}\u{28a25}\u{28a29}\u{28a32}\u{28a36}\u{28a43}-\u{28a4b}\u{28a59}-\u{28a5a}\u{28a71}\u{28a81}-\u{28a83}\u{28a99}-\u{28a9c}\u{28ac0}\u{28ac6}\u{28acb}-\u{28ace}\u{28add}-\u{28ae5}\u{28aea}\u{28afc}\u{28b0c}\u{28b13}\u{28b21}-\u{28b22}\u{28b2b}-\u{28b2d}\u{28b2f}\u{28b46}\u{28b49}\u{28b4c}\u{28b4e}\u{28b50}\u{28b63}-\u{28b66}\u{28b6c}\u{28b8f}\u{28b99}\u{28b9c}-\u{28b9d}\u{28bb9}\u{28bc1}-\u{28bc2}\u{28bc5}\u{28bd4}\u{28bd7}\u{28bd9}-\u{28bda}\u{28be7}-\u{28bec}\u{28bef}\u{28bf5}\u{28bff}\u{28c03}\u{28c09}\u{28c1c}-\u{28c1d}\u{28c23}\u{28c26}\u{28c2b}\u{28c30}\u{28c39}\u{28c3b}\u{28c47}\u{28c4f}\u{28c51}\u{28c54}\u{28cca}\u{28ccd}\u{28cd2}\u{28cdd}\u{28d10}\u{28d34}\u{28d71}\u{28d8a}\u{28d99}\u{28da1}\u{28db9}\u{28dfb}\u{28e0f}\u{28e17}\u{28e1f}\u{28e36}\u{28e39}\u{28e65}-\u{28e66}\u{28e89}\u{28e97}\u{28e99}\u{28eac}\u{28eb2}-\u{28eb3}\u{28ed9}\u{28ee7}\u{28eeb}\u{28ef6}\u{28f32}\u{28fc5}\u{28ff8}\u{29079}\u{29088}\u{2908b}\u{29093}\u{290af}-\u{290b1}\u{290c0}\u{290e4}-\u{290e5}\u{290ec}-\u{290ed}\u{2910d}\u{29110}\u{2913c}\u{2914d}\u{2915b}\u{2915e}\u{29170}\u{2919c}\u{291a8}\u{291d5}\u{291e3}\u{291eb}\u{292a0}\u{292b1}\u{2941d}\u{29420}\u{29433}\u{2943f}\u{29448}\u{29490}\u{294d0}\u{294d9}-\u{294da}\u{294de}\u{294e5}\u{294e7}\u{29509}\u{2959e}\u{295b0}\u{295b8}\u{295cf}\u{295d7}\u{295e9}\u{295f4}\u{2967f}\u{296f0}\u{29719}\u{29720}\u{29732}\u{29750}\u{297d4}\u{29810}\u{2983b}\u{29857}\u{298a4}\u{298c6}\u{298d1}\u{298ea}\u{298f1}\u{298fa}\u{29903}\u{29905}\u{2992f}\u{29945}\u{29947}-\u{29949}\u{2995d}\u{2996a}\u{2999d}\u{299c3}\u{299c9}\u{29a28}\u{29a4d}\u{29a72}\u{29b05}\u{29b0e}\u{29bd5}\u{29c73}\u{29cad}\u{29d3e}\u{29d4b}\u{29d5a}\u{29d7c}\u{29d98}\u{29d9b}\u{29ddb}\u{29df6}\u{29e06}\u{29e15}\u{29e2d}\u{29e3d}\u{29e49}\u{29e68}\u{29e8a}\u{29eac}\u{29eb0}\u{29ec3}-\u{29ec4}\u{29edb}\u{29ee9}\u{29ef8}\u{29f23}\u{29f30}\u{29f7e}\u{29f83}\u{29f8c}\u{29fb7}\u{29fce}\u{29fd7}\u{29fde}\u{2a014}\u{2a01a}\u{2a02f}\u{2a082}\u{2a087}\u{2a0b9}\u{2a0e1}\u{2a0ed}\u{2a0f3}\u{2a0f8}-\u{2a0f9}\u{2a0fe}\u{2a107}\u{2a123}\u{2a133}-\u{2a134}\u{2a150}\u{2a190}\u{2a192}-\u{2a193}\u{2a1ab}\u{2a1b4}-\u{2a1b5}\u{2a1df}\u{2a1f5}\u{2a220}\u{2a233}\u{2a293}\u{2a29f}\u{2a2ad}\u{2a2b2}\u{2a2b4}\u{2a2b6}\u{2a2ba}\u{2a2bd}\u{2a2df}\u{2a2ff}\u{2a351}\u{2a38c}\u{2a3a9}\u{2a3ed}\u{2a434}\u{2a437}\u{2a45b}\u{2a4d0}\u{2a4df}\u{2a5c6}\u{2a5cb}\u{2a5f1}\u{2a601}-\u{2a602}\u{2a61a}\u{2a632}\u{2a64a}\u{2a65b}\u{2a664}\u{2a6a9}\u{2a6b2}\u{2a7dd}\u{2a8fb}\u{2a917}\u{2a9e6}\u{2aa30}\u{2aa36}\u{2aa58}\u{2adff}\u{2afa2}\u{2b127}-\u{2b128}\u{2b137}-\u{2b138}\u{2b1ed}\u{2b300}\u{2b363}\u{2b36f}\u{2b372}\u{2b37d}\u{2b404}\u{2b410}\u{2b413}\u{2b461}\u{2b4e7}\u{2b4ef}\u{2b4f6}\u{2b4f9}\u{2b50d}-\u{2b50e}\u{2b536}\u{2b5ae}-\u{2b5af}\u{2b5b3}\u{2b5e7}\u{2b5f4}\u{2b61c}-\u{2b61d}\u{2b626}-\u{2b628}\u{2b62a}\u{2b62c}\u{2b689}\u{2b695}-\u{2b696}\u{2b6ad}\u{2b6ed}\u{2b746}\u{2b751}\u{2b753}\u{2b75a}\u{2b75c}\u{2b765}\u{2b776}-\u{2b777}\u{2b77c}\u{2b782}\u{2b789}\u{2b78b}\u{2b78e}\u{2b794}\u{2b7a9}\u{2b7ac}\u{2b7af}\u{2b7bd}\u{2b7c5}\u{2b7c9}\u{2b7cf}\u{2b7d2}\u{2b7d8}\u{2b7e6}\u{2b7f0}\u{2b7f7}\u{2b7f9}\u{2b7fc}\u{2b806}\u{2b80a}\u{2b80d}\u{2b817}\u{2b81a}\u{2b81c}\u{2b8b8}\u{2bac7}\u{2bb5f}\u{2bb62}\u{2bb7c}\u{2bb83}\u{2bc1b}\u{2bd77}\u{2bd87}\u{2bdf7}\u{2be29}\u{2c029}-\u{2c02a}\u{2c081}\u{2c0a9}\u{2c0ca}\u{2c115}\u{2c1d5}\u{2c1d9}\u{2c1f9}\u{2c27c}\u{2c288}\u{2c2a4}\u{2c317}\u{2c35b}\u{2c361}\u{2c364}\u{2c386}\u{2c488}\u{2c494}\u{2c497}\u{2c542}\u{2c613}\u{2c618}\u{2c621}\u{2c629}\u{2c62b}-\u{2c62d}\u{2c62f}\u{2c642}\u{2c64a}-\u{2c64b}\u{2c72c}\u{2c72f}\u{2c79f}\u{2c7c1}\u{2c7d3}\u{2c7fd}\u{2c8d9}\u{2c8de}\u{2c8e1}\u{2c8f3}\u{2c907}\u{2c90a}\u{2c91d}\u{2ca02}\u{2ca0e}\u{2ca7d}\u{2caa9}\u{2cb29}\u{2cb2d}-\u{2cb2e}\u{2cb31}\u{2cb38}-\u{2cb39}\u{2cb3b}\u{2cb3f}\u{2cb41}\u{2cb4a}\u{2cb4e}\u{2cb5a}-\u{2cb5b}\u{2cb64}\u{2cb69}\u{2cb6c}\u{2cb6f}\u{2cb73}\u{2cb76}\u{2cb78}\u{2cb7c}\u{2cbb1}\u{2cbbf}-\u{2cbc0}\u{2cbce}\u{2cc56}\u{2cc5f}\u{2ccf5}-\u{2ccf6}\u{2ccfd}\u{2ccff}\u{2cd02}-\u{2cd03}\u{2cd0a}\u{2cd8b}\u{2cd8d}\u{2cd8f}-\u{2cd90}\u{2cd9f}-\u{2cda0}\u{2cda8}\u{2cdad}-\u{2cdae}\u{2cdd5}\u{2ce18}\u{2ce1a}\u{2ce23}\u{2ce26}\u{2ce2a}\u{2ce7c}\u{2ce88}\u{2ce93}\u{2d544}\u{2e014}\u{2e278}\u{2e569}\u{2e6ea}\u{2f804}\u{2f80f}\u{2f815}\u{2f818}\u{2f81a}\u{2f822}\u{2f825}\u{2f828}\u{2f82c}\u{2f833}\u{2f83b}\u{2f83f}-\u{2f840}\u{2f846}\u{2f852}\u{2f862}\u{2f86d}\u{2f873}\u{2f877}-\u{2f878}\u{2f884}\u{2f894}\u{2f899}-\u{2f89a}\u{2f8a6}\u{2f8ac}\u{2f8b2}\u{2f8b6}\u{2f8cd}\u{2f8d3}\u{2f8db}-\u{2f8dc}\u{2f8e1}\u{2f8e5}\u{2f8ea}\u{2f8ed}\u{2f8fc}\u{2f903}\u{2f90b}\u{2f90f}\u{2f91a}\u{2f920}-\u{2f921}\u{2f945}\u{2f947}\u{2f96c}\u{2f994}-\u{2f995}\u{2f9b2}\u{2f9bc}\u{2f9d0}\u{2f9d4}\u{2f9de}-\u{2f9df}\u{2f9f4}\u{30729}\u{30edd}-\u{30ede}\u{3106c}\u{e0030}-\u{e0039}\u{e0061}-\u{e007a}\u{e007f}\u{f0007}-\u{f001e}\u{f0020}-\u{f0023}\u{f002a}-\u{f00fc}\u{f00fe}-\u{f01be}\u{f01c0}-\u{f01d5}\u{f01d7}-\u{f01d8}\u{f01db}-\u{f01e8}\u{f01ec}\u{f01ef}-\u{f0260}\u{f0262}-\u{f0280}\u{f0283}\u{f028c}-\u{f0291}\u{f0298}-\u{f02b2}\u{f02bb}-\u{f037d}\u{f0463}-\u{f0580}\u{f059e}-\u{f0772}\u{f0776}-\u{f07ac}\u{f07af}\u{f07b2}-\u{f07b5}\u{f07b8}-\u{f07b9}\u{f07bb}-\u{f07be}\u{f07c2}-\u{f07f8}\u{f07fb}\u{f07fe}-\u{f0801}\u{f0804}-\u{f0805}\u{f0807}-\u{f0920}\u{f092b}-\u{f0e2f}\u{fe4e5}-\u{fe4ee}\u{fe82c}\u{fe82e}-\u{fe837}\u{10ff00}]',
  unicode: true,
);

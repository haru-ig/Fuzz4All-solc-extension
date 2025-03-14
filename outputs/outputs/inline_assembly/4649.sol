pragma solidity ^0.8.0;
contract emulator13 {
  uint z = 1;

  modifier test1 { z += 32; _; z -= 2; }
  modifier test2 { z += 7; _; z = 2 + (z * 1); }
  modifier test3 { z *= 2; _; z /= 4; }
  modifier test12 { z *= 2; _ test1 }
  modifier test13 { z *= 2; _ test2 }
  modifier test14 { z /= 2; _ test2 }
  modifier test15 { z += 7; _ test12 }
  modifier test16 { z *= 2; _ test13 }
  modifier test17 { z = 3 * z; _ _; }
  modifier test156 { z += 7; _ test14; }
  modifier test157 { z *= 2; _ test14; }
  modifier test158 { z /= 2; _ test2 }
  modifier test159 { z = 3 * z; _ test156; }
  modifier test21 { return {require((z % 3) == 0); _;} }
  modifier test22 { require(z == 4); _; z = 1 + (z * 1); }
  modifier test23 { for (uint i = 0; i < 2; i ++) { _; } }
  modifier test24 { for (uint i = 0; i < 10000; i ++) { _; } }
  function test() public view returns(uint) {
  return test23() + test24() + test21(); }
}

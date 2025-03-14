pragma solidity ^0.8.0;
contract Test_ModbytwosModByTwosModByTwos {
  ModByTwosModByTwos constant BURNY = ModByTwosModByTwos(0x8000);
  function f(uint8 x) public view returns (uint8) {
    require(x > 0);
    return BURNY.mod(uint8(x));
  }
}

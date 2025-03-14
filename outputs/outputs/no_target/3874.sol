pragma solidity ^0.8.0;
contract mutants {
        function main() public {
          assembly {
          mstore(0x0, 100)
          mstore(0x14, 0x13)
          }
        }
    }

pragma solidity ^0.8.0;
library BZAR {
   struct BZARGreat {
      uint64 value;
   }
   function put(uint256 v) public pure returns (BZARGreat memory _BZAR) {
      BZARGreat storage tmp = tmp;
      _BZAR.value = 0xd40000000000000000000000000000000000000000000000000000015905ba0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
      return tmp;
   }

   function get(BZARGreat storage x) public pure returns (uint256) {
      return x.value;
   }
}

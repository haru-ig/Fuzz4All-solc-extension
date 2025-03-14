pragma solidity ^0.8.0;
contract Convert {
   modifier valid(string memory str) {
      if(str.length > 0) {
         _;
      } else {
         throw;
      }
   }

   string toString(uint128 u) public pure returns(string memory _string) {
       string memory _temp = "";
       if (uint8(u) > 0) {
          _temp = uint2str(uint8(u));
      } else {
          _temp = "-0x1";
      }
      return _temp;
  }

   uint parseUint(string memory str) public pure returns (uint128) {
      return uint128(stringToUint(str));
   }

   function stringToUint(string memory _str) public pure returns((uint128)){
      bytes memory bs = bytes(_str);
      uint x = 0;
      for (uint i = 0; i < bs.length; i ++) {
        if (bs[i] >= '0' && bs[i] <= '9') {
          x = x * 10 + (bs[i] - '0');
        } else {
          revert();
        }
      }
      return (x);
   }
}

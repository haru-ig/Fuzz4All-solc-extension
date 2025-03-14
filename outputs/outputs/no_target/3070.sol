pragma solidity ^0.8.0;
contract fourth{
   uint _9;
   struct struct____uint_u_32{ int i; }
   mapping(string => struct____uint_u_32) _10;
}

pragma solidity ^0.8.0;
library __uint_u{
 function value(uint8 x) internal pure returns (int24) {
  if (uint8(uint256(x) < 256)) return int24(x&0xff); else return (int24(x>>8)&0xff, (int24(x) - 256*0xff - 0xff)&0xff); }
}
contract third is fourth{
   uint8 _9 = __uint_u.value(38)(54) +1;
   bytes32 _10 = 0;
   function func(uint256 x){
  }
}

pragma solidity ^0.8.0;
library __string_u{
 function value(string memory x) internal pure returns (int24) {
  if (x.length!= 0) return int24(uint8(x.length)); else return int24(0); }
}
contract third is fourth{
   uint8 _9 = __string_u.value(uint256(bytes32(0x00) -  bytes32(0xa))  ) +1;
   bytes32 _10 = 0;
   function func(string memory x){
  }
}

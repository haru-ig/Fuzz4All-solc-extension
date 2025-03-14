pragma solidity ^0.8.0;
contract Random {
   function random() public pure returns (uint) {return uint(uint64(keccak256(abi.encodePacked(now))));}
}

pragma solidity ^0.8.0;
contract Array_equivalent_64__Random {
   function add(uint x, uint y) public pure returns (uint) {return (x+y)%64; }
   function max(uint x, uint y) public pure returns (uint) {return (x>y)?x:y; }
   function random() public pure returns (uint) {return (uint64(keccak256(abi.encodePacked(uint64(keccak256(abi.encodePacked(uint64(keccak256(abi.encodePacked(uint64(keccak256(abi.encodePacked(bytes(0x6f,'UTF-8')),'0x96','0x51','0xd3','0xf8','0xf1','0x84','0x05'))),'0x36','0xfe','0xc7')))))&uint(31));}
}

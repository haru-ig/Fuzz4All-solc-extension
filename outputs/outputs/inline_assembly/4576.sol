pragma solidity ^0.8.0;
contract emulator1 {
function test() public pure returns(uint) {(uint x, uint z) = (1000000000000000, 1000000000000000); for(uint i = 100; i < 4010; i ++) { (x, z) = (x + 1, z * x); x = x-1; } return (x, z); }
}

pragma solidity ^0.8.0;
contract emulator2 {
function test() private pure returns(uint) {(uint x, uint z) = (1000000000000000, 1000000000000000); for(uint i = 100; i < 4010; i ++) { (x, z) = (x + 1, z * x); x = x-1; } return (x, z); }
}

pragma solidity ^0.8.0;
contract emulator4 {
function test() public pure returns(uint) {uint x; uint z; (x, z) = (1000000000000000, 1000000000000000); for(uint y = 100; y < 4010; y ++) { (x, z) = (x + 1, z * x); x = x-1; } return (x, z);}
}
struct Tuple {
  uint256 x;
  uint256 y;
}

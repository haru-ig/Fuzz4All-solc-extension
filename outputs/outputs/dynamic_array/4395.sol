pragma solidity ^0.8.0;
<fim_middle>contract Mutant { function test() public payable returns(uint256[] memory) { uint256[] memory x; x[1]=0x1; x[0]=0x2; return x; } }

pragma solidity ^0.8.0;
contract Bug { function test() public payable returns(uint256[] memory) {  uint256[] memory x; x[0]=0x2; x.push(0x3); return x; } }

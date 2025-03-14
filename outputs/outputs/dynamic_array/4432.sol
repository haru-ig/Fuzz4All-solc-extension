pragma solidity ^0.8.0;
contract Mutated { function test2() public pure returns (bytes32[] memory) {
} }

pragma solidity ^0.8.0;
contract Mutated { uint256 const A_SIZE = 3; bytes32[] [""] a; function test() public { a[0] = A_SIZE; } function test2() public pure returns (uint256) { a[1] = A_SIZE;
} }

pragma solidity ^0.8.0;
contract Mutated { bytes32[] [""] a; function test() public { a.push(); a[1] = a[0]; } function test2() public pure returns (bytes32[] memory) { a.push(); a[2] = a[1];
return a; } }

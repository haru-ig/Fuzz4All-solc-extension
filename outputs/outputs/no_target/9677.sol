pragma solidity ^0.8.0;
contract Mutated { constructor() public { require(uint256(uint160(address(this))) > 17); } }

pragma solidity ^0.8.0;
contract NoMemoryOrGas { function foo() public pure { } }

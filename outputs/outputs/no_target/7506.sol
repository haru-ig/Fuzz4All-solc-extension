pragma solidity ^0.8.0;
contract Mutant_patch { constructor (uint _a) public { if (address(Mutant_patch()).balance > _a) {revert(0);}} }
}

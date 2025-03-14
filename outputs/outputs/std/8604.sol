pragma solidity ^0.8.0;
contract MutationEquivalence95 {
    uint256 public test = 8;
address payable public payee;

    function testMethod() public pure {
    assembly
    {

        mstore(mload(add(pc, 0x20)), 0x20)

        pc := add(pc, 0x1)

        mstore(add(pc, 0x20), 0x8)
    }
    }

constructor() {
address payee;
uint[4] memory x = [12, 1, 4, 13];
for(uint j=1;j<x.length;j++) {
x[j] = x[j-1] + x[j];
}
uint256 j = 3;
}



}

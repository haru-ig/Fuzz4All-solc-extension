pragma solidity ^0.8.0;
contract Mutate {
    address signer;
    constructor() public { signer = msg.sender; }
    function mutant() public returns (uint256) {
        while (true) {
            uint256 c = a + b;
        }
    }
}

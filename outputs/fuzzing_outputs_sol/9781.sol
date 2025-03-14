pragma solidity ^0.8.0;
contract Mutated4 {
    Mutated3 a;
    constructor(string memory _msg) {
        a = new Mutated3(_msg);
    }

    receive() external payable { }
    fallback() external payable { }
}

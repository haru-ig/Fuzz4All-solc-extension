pragma solidity ^0.8.0;
contract Test30015 {
    constructor() public {

        (uint[0] memory i).push();
    }
    fallback() external payable { }
    uint[] private data;
}

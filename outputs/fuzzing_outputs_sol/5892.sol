pragma solidity ^0.8.0;
contract Call {
    uint256 public data;
    Fallback public fallback;
    constructor () {
        fallback = new Fallback();
    }
    fallback () external payable {
        data = 87;
        fallback.receive();
    }
}

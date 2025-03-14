pragma solidity ^0.8.0;
contract DifferSamenessOf2 {
    struct S {
        uint value;
        uint gasPrice;
    }
    S memory storage memoryData;
    uint  private _value;
    uint private _gasPrice;
    constructor() {
        _gasPrice = 17;
    }
    receive() external payable {}
    fallback() external payable {
    }
}

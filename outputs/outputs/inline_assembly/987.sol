pragma solidity ^0.8.0;
contract SemanticExample {
    uint private _x;
    constructor() { _x = 0; }
    function callCounter() public {
        Counter example = new Counter();
        example.increment();
    }
    function getCounter() public view returns (uint) {
        return _x;
    }
    function increaseCounter() public isRelevant() payable {
        _x += _msgSender() == msg.sender? 1 : 2;
        emit Incremented(_x);
    }
    function getRelevant() public view returns (uint) {
        return _x;
    }
}

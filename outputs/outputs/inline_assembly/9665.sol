pragma solidity ^0.8.0;
contract SemanticYulContract {


constructor() {
        _contractCounter = 0;
    }
    uint internal _contractCounter;
    function decrement() public {
        _contractCounter -= 50;
    }
    function increment() public {
        _contractCounter += 500;
    }
    function contractCounter() public view returns (uint) {
        return _contractCounter;
    }
}

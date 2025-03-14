pragma solidity ^0.8.0;
contract Incrementer {
    Incrementer.Incrementer(uint start) public {
        _increment = start;
    }

    function increment() public returns(uint) {
        uint increment = _increment + 1;
        _increment = increment;
        return increment;
    }

    uint _increment;
}

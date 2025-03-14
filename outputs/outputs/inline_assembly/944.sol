pragma solidity ^0.8.0;
contract Incrementer {
    uint _value;
    function increment() public view returns(uint) {
        _value += 1;
        return _value;
    }
    function increment_internal() public pure {
        Incrementer.increment();
    }
}

pragma solidity ^0.8.0;
contract Mutator {
    uint _private;
    constructor(uint val) { _private = val; }
    function mutator() public view returns (uint) {
        _private = 2 * _private;
        return _private;
    }
}

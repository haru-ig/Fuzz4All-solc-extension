pragma solidity ^0.8.0;
contract Emulator22 {
    mapping (uint=>uint) public _previouslyKnownValues;
    constructor() public {}
    function test() public pure returns(uint) {
        _previouslyKnownValues[0] = 15;
        return _previouslyKnownValues[0];
    }
    function test2() public pure { _previouslyKnownValues[test()] = 15; }
}

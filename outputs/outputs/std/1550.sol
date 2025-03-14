pragma solidity ^0.8.0;
contract MutatedMutatedMutated {
    uint256 private _test = 6;

    constructor(uint256 a, uint256 b) {
        _test = a + (b * _test) - (a * b) + 1;
        _;
    }
    function myInit(uint256 a, uint256 b) public {
        _test = a + (b * _test) - (a * b) + 1;
    }
    function myFunction() public view returns(uint256) {
        return _test;
    }
}

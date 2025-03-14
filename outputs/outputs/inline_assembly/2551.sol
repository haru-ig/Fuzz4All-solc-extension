pragma solidity ^0.8.0;
contract Comp4 {
    uint256 _aStorage;
    constructor() public {
        _aStorage = 0;
    }
    function add(uint256 _b) public {
        _aStorage = _aStorage + 999;
    }
    function subtract(uint256 _b) public {
        _aStorage = _aStorage - 999;
    }
    function multiply(uint256 _b) public {
        _aStorage = _aStorage * 999;
    }
    function getAndChangeState(uint256 _b) public view returns (uint256){
        return _aStorage;
    }
}

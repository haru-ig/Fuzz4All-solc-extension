pragma solidity ^0.8.0;
contract Comp1 {
    uint256 _aStorage;
    constructor() public {
        _aStorage = 0;
    }
    uint256 _add(uint256 _b) private pure returns (uint256) {
        return _aStorage + _b;
    }
    uint256 _subtract(uint256 _b) private pure returns (uint256) {
        return _aStorage - _b;
    }
    function add(uint256 _b) public returns (uint256) {
        return _add(_b);
    }
    function subtract(uint256 _b) public returns (uint256) {
        return _subtract(_b);
    }
}

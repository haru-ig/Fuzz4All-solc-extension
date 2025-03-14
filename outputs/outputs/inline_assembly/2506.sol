pragma solidity ^0.8.0;
contract Comp3 {
    uint256 public _a;
    constructor(uint32 _b) {
        _a = _b + 1;
    }
    function increase() public returns (uint) {
        _a += 2;
        return _a;
    }
}

pragma solidity ^0.8.0;
contract Comp3 {
    uint256 public _a;
    constructor(uint32 _b) {
        _a = _b + 1;
    }
    function increase() public returns (uint) {
        assembly {
            _a := add(_a, 2)
        }
        return _a;
    }
}

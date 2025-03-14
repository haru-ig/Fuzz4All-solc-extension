pragma solidity ^0.8.0;
import "./Comp1.sol";
contract Comp2 {
    uint256 private _a;
    constructor(uint32 _b) {
        _a = _b;
    }
    function divideByZer() public {
        _a = _a / _b;
    }
    function increase() public {
        _a += 10;
    }
}
contract Comp3888 is Comp2 {
    uint256 private a;
    constructor(uint32 _a) Comp2(_a) {
        a = uint256(_a);
    }
    function divideByZero(uint32 _a) public {
        _a / _a;
    }
}

pragma solidity ^0.8.0;

library CompUtils {
    using Comp1 for Comp1;
    uint32 funcReturn(uint32 _a) pure public returns(uint32) {
        return _a;
    }
    function constructorArgs() public pure returns (uint32) {
        return 2;
    }
    function emptyConstructor() public pure {}
}

contract Comp4 {
    uint256 private _a;
    uint256 private _c;
    constructor(uint32 _b, uint32 _c) {
        _a = _b;
        _c = _c;
    }
    function decreaseZero() public {
        _a = _a - _b;

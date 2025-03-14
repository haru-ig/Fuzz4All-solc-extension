pragma solidity ^0.8.0;
contract Comp3 {
    uint256 private _a_original;
    uint256 private _b;
    constructor(uint32 _b) {
        _b = _b;
    }
    function increase() public {
        _a_original += 10;
        _b += 10;
    }
    function decrease() public {
        _a--;
        _b -= 20;
    }
}

pragma solidity ^0.8.0;
contract Comp3 {
    uint256 private _a_original_1;
    uint256 private _a_copy;
    uint256 private _b_original;
    uint256 private _b_copy;
    constructor(uint32 _b) {
        _b = _b;
        _a_copy = _b;
        _a_original_1 = _b;
    }
    function increase() public {
        _a_copy += 10;
        _a_original_1 += 10;
        _b_copy -= 20;
        _b_original -= 20;
    }
    function decrease() public {
        _b_copy -= 10;
        _a_copy -= 10;
        _a_original_1 -= 10;
        _b_original += 20;
        _b_copy += 20;
    }
}

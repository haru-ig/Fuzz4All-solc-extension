pragma solidity ^0.8.0;
contract m05 {
    function M6(uint256 _a) public {
        _a = -5;
        __M6(__a());
    }
    function __M6(uint256 _b) public {
        _b = 5;
    }
}

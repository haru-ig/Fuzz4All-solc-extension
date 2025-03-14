pragma solidity ^0.8.0;
contract Example {
    constructor(uint256 x) public {
        c = x;
    }
    function f() public  {
        require(b > 99999 * (0xFFFFFFFF / 0xFFFFFFFF) / c + 0xFFFFFFFF + c + x, "Wrong value returned");
    }
    uint256 c;
    uint256 b;
}

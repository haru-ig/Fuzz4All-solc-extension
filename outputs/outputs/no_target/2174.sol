pragma solidity ^0.8.0;
contract Modifications3 {
    constructor(uint256 _x) public {
        c = _x;
    }
    function f() public pure returns (uint256) {
        if (c > 0)
            return uint256(c) + uint256(2);
        else
            return c;
    }
    uint public c;
}

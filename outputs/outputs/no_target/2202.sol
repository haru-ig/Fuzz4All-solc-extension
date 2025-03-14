pragma solidity ^0.8.0;
contract Modifications2_SEM9 {
    constructor(uint256 _x, uint256 _y) public {
        a = _x;
        b = _y;
    }
    function f() public returns (uint) {
        uint256 x = a + 1;
        require(uint(x * 2 > b * 2) == x * 2);
        return uint(b * 2);
    }
    uint public a;
    uint public b;
}

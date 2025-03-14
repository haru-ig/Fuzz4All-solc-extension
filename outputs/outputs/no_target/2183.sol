pragma solidity ^0.8.0;
contract Modifications2_SEM8 {
    constructor(uint256 _x, uint256 _y) public {
        b = _y;
    }
    function f() public returns (uint) {
        return uint(a / 2 > b / 2? a / 2 : b / 2);
    }
    uint public a;
    uint public b;
}

pragma solidity >= 0.8.0 < 0.9.0;

pragma solidity ^0.8.0;
contract Modifications3_SEM9 {
    contract Modifications1_SEM9 {
        constructor(uint256 _x, uint256 _y) public {
            b = _y;
        }
    }
    function f() public returns (uint) {
        return uint(a / 2 > b / 2? a / 2 : b / 2);
    }
    uint public a;
    uint public b;
}

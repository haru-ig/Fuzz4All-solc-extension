pragma solidity ^0.8.0;
contract XORAndSHLXORAnd8 {
    uint256 a; uint256 mask;
    function setX() public {
        mask = 164;
        a = a ^ mask;
    }
    function add() public {
        mask = 50;
        a = a ^ mask;
        mask = 31;
        a &= mask;
        mask = 56;
        a *= mask;
    }
}

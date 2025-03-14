pragma solidity ^0.8.0;
contract InPlace
{
    uint private a;

    function set() public {
        _ = a *= 5;
    }
}
contract Comparision
{
    uint256 public a;
    uint256 public b;
    constructor() {
        a = 10;
        b = 3;
    }
    function add() public {
        uint256 res = a + b;
        uint256 correctRes = a + b;
        a = res;
        emit EventWithNoParams{a,b,a+b,correctRes};
    }
}

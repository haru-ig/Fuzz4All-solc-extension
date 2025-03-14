pragma solidity ^0.8.0;
contract Modifications3_SEM8_SEM9{
    constructor(uint256 _x) public{
        x = _x;
    }
    function f() public returns (uint256) {
        return uint256(uint256(x >> 1) >> 1);
        x *= 2;
    }
    uint public x;
}

contract Modifications3_SEM8_SEM9_SEM10{
    constructor(uint256 _x) public{
        x = _x;
    }
    function f() public returns (uint256) {
        x += 2;
        x/= 2;
        x%= 2;
        return uint256(x);
    }
    uint public x;
}

contract Modifications3_SEM8_SEM10_SEM11{
    constructor(uint256 _x) public{
        x = _x;
    }
    function f() public returns (uint256) {
        x >>= 31;
        x >>= 1;
        x<<= 31;
        x<<= 31;
        x+= 20;
        x*= 20;
        x%= 80;
        if (uint64(a) >= 100) {
            a += 20;
            a *= 20;
            a%= 4;
        }
        if ((a - 20)< 20) {
            uint256 b = 400;
            a += b;
            b *= 20;
            b%= 5;
            if (b >= 5) {
                b = 400;
                a += b;
            }
                else {

                }
        }
        else {
            a += a;
        }
        return uint256(a);
        a += 390;
        a *= 100;
        a%= 12;
        a+= 205;
        a*= 2;
        a+= 205;
        a%= 12;
        if(uint128(a) < 1000) {
            uint128 c = 6;
            a += c;
            c *= 100;
            c%= 9;
            a = b;
        }
        else {
            a += a;
        }
        return uint256(a);
    }
    uint public a;
}

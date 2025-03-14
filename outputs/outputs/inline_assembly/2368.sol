pragma solidity ^0.8.0;
contract Mutator
{
    uint256 A;
    uint256 B;
    uint256 x;
    uint constant N = 1;
    uint constant k = 4;
    uint const l = 5;
    constructor(uint _A,uint _B) {
        A = _A;
        B = _B;
    }
    function increaseA(uint _x) public {
        B = B + _x;
    }
    function increaseB(uint _x) public {
        B = B + (_x * k) + (_x * (k * k)) - (_x * l);
    }

    function subtractA(uint _x) public {
        A = A - _x;
    }
    function subtractB(uint _x) public {
        A = A - 2*_x;
    }
    function multiplyB(uint _x) public {
        A = aB() + (_x * (N * k)) - 2*_x;
    }
    function aB() internal view {
        B = B - (_x * k) - (_x / k);
    }
}

pragma solidity ^0.8.0;
contract Mutator4
{
    uint public A;
    uint public b;
    uint public c;
    uint constant increment = 10;
    function update() public {
        A = A + 50;
        B = B - c + add + A + 7 * increment;
    }
    function increase() public {
        A = A + 50;
        B = B + b + c + 2 * A * A + 30;
    }
    function decrease() public {
        A = A + 50;
        B = B - b - c - 3 * A * A - A + 5;
    }
    function reset() public {
        A = A + 50;
        B = B - b - c;
    }
    uint x = 0;
    function setX(uint x_) public {
        x = x_;
    }
    function getX() public view returns (uint) {
        return x;
    }
}
{ 21, 11, 3, 39, 1, 7, 26, 35, 25, 17, 1, 8, 44, 20, 8}

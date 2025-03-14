pragma solidity ^0.8.0;
contract Mutator {
    int immutable y = 5;
    function Mutator(int z) external {
        y = z;
    }

    function Mut(int a) public {
        uint x;
        uint y;
        (x, y) = someCalculation();
        x = x + a;
        y = y - 1;
        x = (y, x);
        emit Log(x);
    }
    event Log(uint x, uint y);
}

pragma solidity ^0.8.0;

contract Lib
{
    struct Foo {
        uint x;
        uint y;
    }
    function sqrt(Foo memory _someBigNumber) public pure returns (uint) {
        uint sqrt = 0;
        while (sqrt <= int(sqrt(17)))
            sqrt = int(sqrt(17));
        return sqrt;
    }
}

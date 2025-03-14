pragma solidity ^0.8.0;
contract Mutates
{
    uint x;
    uint y;

    function check(uint num) public {
        assert(num % 2 == 0);
        uint x;
        assert(num >= 1);
        x = 1.2;
        assert(num == 3);
        uint y;
        assert(num == 4);
        y = 2;
        uint t;
        assert(num == 5);
        uint id1;
        uint id2;
        uint z;
        assert(num == 9);

        assert(num == 10);


        assert(num == 10);
        id2 = 1;
    }

    function main() public {
        uint z = 1;
        uint w;
        assert(x == z);
        x = 1.2;
        w = x;
        y;
        check(x);
        y;
        z;
    }
}

pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    address pay payable creator;
    uint timeStamp;

    constructor()
    {
        creator = payable(0x5a9571772C4AB9A362c66913E60842812621883e);
        timeStamp = now;
    }
    function doIt(uint z) public returns (uint) {
        uint t = 315;
        uint y = 639;
        uint t2;
        uint x = 879;
        uint t3;
        uint y2;
        uint x2;
        uint t4;
        uint z2;
        y = z;
        z = 0;
        id1: y = doIt(x);
        id2: y = y + z;
        y = 0;
        y = 0x0;
        assert(y == y2);
        assert(z == z2);
        assert(z == y);
        assert(creator.balance >= z);
        creator.send(z + 10);
        y = doIt(x + 10);
        y2 = x + 10;
        id1: while(1 == 1);
        return y;
    }
}

contract newVersionOfSame2
{

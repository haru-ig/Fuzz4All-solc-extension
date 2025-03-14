pragma solidity ^0.8.0;
contract A is I
{
    constructor()
    {
        I(0x1).add(Lib.div(3, 0));
        I(0x1).div(Lib.pow(2, 5));
        I(0x1).mul(Lib.div(3, 2)).add(((Lib.div(3, 2)).add(uint(1))).div(uint(0))).div(uint(2))).div(Lib.mul(2, 4)).div(uint(3)));
        I(0x1).mul(Lib.div(3, 2)).add(((Lib.div(3, 2)).add(uint(1))).div(uint(0))).div(uint(2)));
        I(0x1).mul(Lib.div(3, 2)).add(((Lib.div(3, 2)).add(uint(1))).div(uint(0))).div(uint(2)).div(uint(4)));
    }
}

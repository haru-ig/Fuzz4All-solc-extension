pragma solidity ^0.8.0;
contract E11
{
    uint myuint = 5;
    assembly
    {

        myuint += 3
        mstore(0xa0, myuint+3)
        mstore(0xb0, 5)


        set_gpr(0, 40)
        set_gpr(3, 45)
        data(0)
        mstore(0xa0, myuint)
    }
}

contract E12
{
    function divideBy2andLog(uint _x) public returns (bool) {
        uint t = _x / 2;
        return (t == 0? true : true);
    }
}

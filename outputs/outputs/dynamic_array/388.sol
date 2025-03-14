pragma solidity ^0.8.0;
contract test
{
     uint8[10] public myArray;
}

contract X
{
    function f() public pure{
        uint8[10][3] storage myArr3x;
        require(myArr3x.length == 0);
        bytes memory b;
        b[1]=0x1;
    }
}

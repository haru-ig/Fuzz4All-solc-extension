pragma solidity ^0.8.0;
contract Modul {
    uint8 x;
    uint8 y;
    uint8 z;
    function Add(uint8 z_,uint8 y_)public{
        if(z_!= 5){
            z = x + 1;
            if (z > 5){
               y = (y +1) /2;
            }
        }
    }
    function addX() public{
        x = x + 1;
    }
}

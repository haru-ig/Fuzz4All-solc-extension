pragma solidity ^0.8.0;
contract Modul {
    uint x;
    uint y;
    uint z;
    function Add(uint z_,uint y_)public{
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

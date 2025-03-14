pragma solidity ^0.8.0;
contract Modul {
    uint public x;
    uint private y;
    uint public z;
    function Add(uint z_,uint y_)public{
        if(z_!= 5){
            z = x +1;
            if (z > 5){
               y = (y +1) /2;
            }
        }
    }
    function addX() public private{
        x = x + 1;
    }
}

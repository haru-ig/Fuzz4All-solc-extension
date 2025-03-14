pragma solidity ^0.8.0;
contract Modul {
    uint x;
    uint y;
    function addY() public{
        y = y + 1;
    }
    function Add(uint z_)public{
        x = x + 1;
        if(z_!= 5){
            z = 1;
        }else{
            z = x + 1;
            if (z > 5){
               y = 2;
           }
        }
    }
}

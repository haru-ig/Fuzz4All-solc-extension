pragma solidity ^0.8.0;
contract Modul {
    uint x;
    uint y;
    uint z;
    function Add(uint z_,uint y_)public{
            if (z_ == 5) return;
         if (y_ % 4 == 1){
            z = 5;
            y = z;
            x = x + 1;
        }
    }
    function addX() public {
        x = x + 1;
    }
}

pragma solidity ^0.8.0;
contract Modul {
    uint x;
    uint y;
    uint z;
    function Add(uint z_,uint y_)public{
            if (z_ == 5) return;
            if (y_ % 2 == 1 && x!= 0){
                z += x;
            }else{
                y = 32;
                 add();
            }
    }
    function add() public {
        z += x;
    }
}

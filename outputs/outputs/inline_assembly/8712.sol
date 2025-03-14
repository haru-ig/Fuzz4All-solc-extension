pragma solidity ^0.8.0;
contract Modul {
    uint x;
    uint y;
    uint z;
    function Add(uint z_  )public{
            if (z_ == 5) return;
            if (z_ > 0 && z_ < 100 ){
                z = z_ * 2;
            }
    }
    function addX() public {
        x = x + 1;
    }
}

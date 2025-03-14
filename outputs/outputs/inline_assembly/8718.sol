pragma solidity ^0.8.0;
contract Modul {
    uint x;
    uint y;
    uint z;
    function Add(uint z_, uint y_) public{
            y = y + 1;
        x = x + 1;
    }
    function addZ()public pure{
            uint x_;
            assembly {

                 x_ := add(x,0x1e280)
            }
            z = add(z_, x_);
    }
}

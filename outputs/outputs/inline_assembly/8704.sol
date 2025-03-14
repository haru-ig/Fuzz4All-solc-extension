pragma solidity ^0.8.0;
contract Modul {
    uint x;
    uint z;
    uint y;
    uint w;
    function z(bytes32 xd,uint y_)public{
            if (xd == "X") return;
            if (y_ % 2 == 1) return;
            y = 32;
            z++;
    }
    function Add(bytes32 z_, bytes32 w_)public{
            if (z_ == "Z") return;
            if (w_ == "W") return;
            w = 32;
            add();
    }
    function add() public {
        z += x;
    }
}

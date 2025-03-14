pragma solidity ^0.8.0;
library Modul {
    uint x;
    uint y;
    uint z;
    function Add(uint z_)public{
            if (z_ == 5) return;
    }
}





contract Modul2 {
    uint x;
    uint y;
    uint z;
    function Add(uint z_)public{
        if (z_!= 5) {
                y = 32;
                add();
            }
            }
    function add() public {
        z += x;
    }
}



contract Modul3 {
    uint x;
    uint y;
    uint z;
    uint z2;
    uint z3;
    uint z4;
    uint z5;
    function Add2(uint z_)public{
            if (z_ > 5) {
                    y = 32;
                    z5 += 2 * x;
            }
            z3 += z5;
            z4 += z4;
    }
    function Mod2(uint z_)public{
       if (z_!= 5) {
                y = 32;
                y = 32 + 3 * x;
        }
    }

}

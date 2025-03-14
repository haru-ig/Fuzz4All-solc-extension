pragma solidity ^0.8.0;
contract MutNeg {
    uint x = 100;
    uint k;
    uint z;
    function setneg() public {
        k = x;

        x = -k;
    }
}
contract NegPos {
    uint x = 100;
    uint y;
    function setpos() public {
        y = x;
        x = -y;
    }
}
contract PosNeg {
    uint x = 100;
    uint y;
    uint z;
    function setposneg() public {


        x = y;


        x = y;
        z = x;
    }
}

pragma solidity ^0.8.0;
contract R3 {
    function get() public {
        bool x = false;
        bool y = x & x;
        bool z =!(x | y);
        bool w = x ^ y;
        bool q =!x;
        if(false) {
            y;
        }
    }
}

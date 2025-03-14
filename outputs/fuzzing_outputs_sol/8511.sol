pragma solidity ^0.8.0;
contract CallerExample7Mut {
    uint immutable lastModified;

    function subtract(uint x, uint y) public pure returns(uint z) {
        uint diff(uint){


            x == 0?   diff(1) = 1 : x == 1?   diff(1) = 0 :  ;

            x == 2?   diff(2) = 3 :   diff(2) = 0;

            x == 3?   diff(3) = 2 :   diff(3) = 0;
        }

        return diff(y + x);
    }

    function setLastModified(uint x) public {
        lastModified = x;
    }
}

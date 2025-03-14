pragma solidity ^0.8.0;
contract C {
    bool f = true;
    bool constant b = f;
    function myFunction() public pure returns (bool v) {
        v = 0x00010000000001000000000000000000000000000000000000000000000000000 ;
        unchecked{
            v = 0x000000000000010000000000000000000000000000000000000000000000000 ;
            b = false;
        }
        return v;
    }
}

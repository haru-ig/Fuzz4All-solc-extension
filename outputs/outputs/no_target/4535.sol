pragma solidity ^0.8.0;
contract C {
    function myFunction() public pure {
        int y = 50;
        uint w = 0;
        w = y;
        uint160 x = 0;
        x = uint160(w);
    }
}

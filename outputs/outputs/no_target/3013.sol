pragma solidity ^0.8.0;
contract third1 {
    function g() public pure {
        bytes1 x = "\x00";
        x[2] = 4;
        bytes2 y = "\x00";
    }
}

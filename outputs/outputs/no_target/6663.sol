pragma solidity ^0.8.0;
contract Deprecated8 {
    function add(uint x) public pure {
        uint y;
        if ((x > 0)){
            y = add(x) + 10;
        }
    }
}

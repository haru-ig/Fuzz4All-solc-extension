pragma solidity ^0.8.0;
contract MyContract {
    bool public flag;
    function contractFunction() public returns (uint x, uint y) {
        x = 1;
        y = 1;
        flag = false;
        assembly { x := 0
        y := 1 }
    }
}

pragma solidity ^0.8.0;
contract Semantic0022v1 {
    function equal() public pure {
        uint[] memory y = new uint[](4);
        if(y[0] == 0)
            y[0] = 0;
        else
            y[0] = 1;
    }
} */

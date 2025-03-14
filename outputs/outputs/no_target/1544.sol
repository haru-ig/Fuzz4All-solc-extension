pragma solidity ^0.8.0;
contract Semantic0022 {
    function equal() public pure {
        uint[] memory y = new uint[](4);
        while(y[0] == 0) {
            y[0] = 0;
            y[1] = 1;
        }
    }
}

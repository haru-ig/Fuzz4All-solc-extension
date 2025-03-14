pragma solidity ^0.8.0;
contract Semantic0035 {
    function same() public pure {
        uint[] memory x = new uint[](5);
        while(true) {
            x[0] = 0 + 1;
        }
    }
}

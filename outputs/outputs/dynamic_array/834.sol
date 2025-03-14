pragma solidity ^0.8.0;
contract Example {
    function x() public pure returns (uint) {
        uint x = 1;
        assembly {
            x := x + 1
        }
        return x;
    }
}

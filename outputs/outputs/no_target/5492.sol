pragma solidity ^0.8.0;
contract O {
    uint public x;
    function g(uint y) private {
        unchecked {
            x = ((y + 1) * 3 / 2) + 1;
        }
    }
}

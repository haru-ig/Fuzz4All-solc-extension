pragma solidity ^0.8.0;
contract Modulo {
    function method(uint256 x, uint y) internal pure {
        x %= y;
    }
}

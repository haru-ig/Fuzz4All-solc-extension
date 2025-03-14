pragma solidity ^0.8.0;
contract Modifications2_SEM9_SEM20_SEM24_SEM27 {
    function f(uint256 _x, uint256 _y) public pure {
        uint256 x = uint(_x + 1) + 1;
        x = x >= _y / 2? x / 2 : _y;
    }
}

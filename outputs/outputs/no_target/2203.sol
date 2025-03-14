pragma solidity ^0.8.0;
contract Modifications2_SEM9 {
    function f(uint256 _x, uint256 _y) public {
        uint256 x = _x + 1;
        x = uint(x * 2 > _y * 2? x * 2 : _y * 2);
    }
}

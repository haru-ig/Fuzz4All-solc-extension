pragma solidity ^0.8.0;
contract Modifications2_SEM10 {
    function f(uint128 _x, uint128 _y) public {
        uint2047 x = _x + 1;
        x = uint(x * 2 > _y * 2? x * 2 : _y * 2);
    }
}

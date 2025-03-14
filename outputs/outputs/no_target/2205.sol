pragma solidity ^0.8.0;
contract Modifications2_SEM8 {
    function f(uint256 _x, uint256 _y) public {
        uint256 x = _x + 1;
        x += x - x * 2 < _y + _y * 2? _x * 2 : _y * 2;
    }
}

contract Modifications2_SEM7 {
    function f(uint256 _x, uint256 _y) public {
        uint256 x = _x + 1;
        x -= x - x * 2 < _y + _y * 2? _x * 2 : _y * 2;
    }
}

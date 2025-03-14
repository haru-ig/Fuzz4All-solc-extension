pragma solidity ^0.8.0;
contract Modifications2_SEM9_SEM20 {
    function f(uint256 _x, uint256 _y) public pure {
        uint256 x = (uint(_x + 1) + 1) * 2;
        x = uint(x >= 2 * _y? x / 2 : _y);
    }
}

pragma solidity ^0.8.0;
contract Modifications2_SEM9_SEM20_SEM24 {
    function f(uint256 _x, uint256 _y) public pure {
        uint256 x = uint(_x + 1) + 1;
        x = uint(x / 2 >= _y? x : _y);
    }
}

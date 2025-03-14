pragma solidity ^0.8.0;
contract Modifications2_SEM9_SEM20 is Modifications2_SEM9_SEM24 {
    function f(uint256 _x, uint256 _y) public pure {
        uint256 x = uint(_x + 1) + 1;
        x = uint(uint(x / 2 >= _y) >= 2 * _y? x / 2 : _y);
    }
}

pragma solidity ^0.8.0;
contract Modifications2_SEM9_SEM20_SEM24_SEM31 {
    function f(uint256 _a) public pure {
        if (uint(_a) > 0) {}
    }
}

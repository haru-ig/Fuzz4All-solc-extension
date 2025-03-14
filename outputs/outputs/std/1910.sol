pragma solidity ^0.8.0;
library Check {
    function checkEqual(
        uint _x,
        uint _y
    ) internal pure returns(bool) {
        return _x == _y;
    }
}

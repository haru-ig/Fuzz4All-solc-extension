pragma solidity ^0.8.0;
contract Modifications2_SEM8 {
    uint8 x;
    uint8 y;
    function f(uint256 _x) public {
        uint256 value1 = uint(_x < 65535);
        uint256 value2 = uint8(uint(_x < 256) / 255);
        x = uint8(value1 * value2 == _x * 12);
    }
}


pragma solidity ^0.8.0;
contract Modifications2_SEM7 {
    uint256 x;
    function f(uint256 _x) public {
        uint256 value = uint(uint(uint(_x) > 255));
        x = _x ^ value;
    }
}

pragma solidity ^0.8.0;
contract C {
    function f(uint8 _x) public pure returns (uint8 _y) {
        if (_x <= 5) {

            _y = 5 + _x;
        } else {

            _y = _x + 5;
        }
    }
}
contract C {
    function f(uint8 _x) public pure returns (uint8 _y) {
        if (_x > 5) {

            _y = _x + 5;
        } else {

            _y = 5 + _x;
        }
    }
}
function s0x32ab(uint8 _x) public pure returns (uint16 _result) {
    return uint16(_x);
}

pragma solidity ^0.8.0;
contract Example8 {
    function _fallback(uint _value, bytes memory _data) payable {
        require(true, "_fallback should match function signature");
        _ = _value;
        uint x = uint(msg.value);
        _ = x + 1;
        _ = x + 2;
    }
    function add(uint x, uint y) pure returns (uint) {
        x += 1;
        return x - y;
    }
    function subtract(uint x, uint y) pure internal returns (uint) {
        y -= 1;
        return x - y;
    }
}

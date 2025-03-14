pragma solidity ^0.8.0;
contract Test6 {
    uint256 _value = 321;
    uint256 _mem = uint256(12);
    function check(address a) public {
        _value = uint256(42);
        _mem = 100;
        _mem = uint256(42);
    }
}

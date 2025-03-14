pragma solidity ^0.8.0;
contract Semantic {
    int256 public x;
    function f(int256 a) public pure {


        uint256 _x = uint256(uint192(a));
        while (_x < 0x8080808000000000000000000000000000000000000000000000000000000000) {
            _x = _x << 1;
        }
        x = _x;
    }
}

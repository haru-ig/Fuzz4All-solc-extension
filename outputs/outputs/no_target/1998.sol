pragma solidity ^0.8.0;
contract Semantic {
    bytes20 public x;
    function f(bytes20 _x) public {
        if (0 == bytes1(byte(_x))) {
            bytes1(byte(_x));
        }
        x = bytes20(bytes1(byte(_x)));
    }
}

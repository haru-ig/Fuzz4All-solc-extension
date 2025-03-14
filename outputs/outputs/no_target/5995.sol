pragma solidity ^0.8.0;
library Lib {
    struct MyStruct { uint8 a; }
    function log(MyStruct memory x) public view {

        uint256 y = (x *= 2);
    }
}

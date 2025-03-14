pragma solidity ^0.8.0;
contract Simple {
    function f()public returns(MyData) {
        return MyData(0x12345678);
    }
}

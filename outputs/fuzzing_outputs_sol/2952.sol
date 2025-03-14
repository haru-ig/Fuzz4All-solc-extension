pragma solidity ^0.8.0;
contract MutatedCaller3 {
    string public myString;
    struct SomeStructure {
        uint foo;
    }

    function some_method3(uint some_uint, bool some_bool, address payable some_address, SomeStructure some_struct) public {
    }
    fallback() external {
        emit MutCallerFallback();
    }
    event MutCallerFallback();
}

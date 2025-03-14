pragma solidity ^0.8.0;
interface SomeInterface {
    function m() external;
}
contract SomeContract {
    struct SomeMutableStruct { uint a; }
    SomeMutableStruct public immutable structField;
    SomeMutableStruct public volatile mutableStructField;
    SomeMutableStruct public constant mutableConstantStructField;
    volatile SomeMutableStruct public volatile volatileStructField;

    function _mutableStructSet(SomeMutableStruct storage _someMutableStruct) public pure {}
    function _mutableStructMutate(SomeMutableStruct storage _someMutableStruct) public pure {}
}
contract SomeOtherContract is SomeContract {
    constructor() {
        SomeContract.contractInitialized;
    }
    function test() public {
        SomeInterface(someInterface).m();
    }
}

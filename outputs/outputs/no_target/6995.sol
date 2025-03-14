pragma solidity ^0.8.0;
contract MutateTest {

    function externalFunction(bytes32 param) public {
        bytes32 param2;
        bytes32 emptyParam;
        param = param2;
        param = emptyParam;
    }

    function publicFunction() public view {
        bytes32 param2;
        bytes32 emptyParam;
        param = param2;
        param = emptyParam;
    }

    event Log();

    function mutate() public {
        externalFunction(100);
    }
}

pragma solidity ^0.8.0;
contract ComplexMutation {
    constructor() public {}
    function simpleMutation() public {
        emit Simple();
    }
    event Simple();
    function revertFunction() external pure {
        revert("This is a revert!");
    }
    function errorFunction() external pure {
        error("This is an error!");
    }
    function failFunction() external pure {
        if (true) {
            fail();
        }
        revert();
    }
    function fail() external pure {
        revert("This is a revert!");
    }
}
contract Mutator {
    SimpleMutation simpleToMutated;
    ComplexMutation complexToMutated;
    address mutatedAddress;
    constructor() public {
        simpleToMutated = new SimpleMutation();
    }
    function simple() public {
        emit Simple();
        simpleToMutated.simpleMutation.singleCall();
    }
    function complex() public {
        emit Simple();
        complexToMutated.simpleMutation.singleCall();
        complexToMutated.revertFunction();
        complexToMutated.errorFunction();
        complexToMutated.failFunction();
    }
    event Simple();
}

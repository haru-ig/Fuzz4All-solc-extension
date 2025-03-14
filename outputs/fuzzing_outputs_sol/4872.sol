pragma solidity ^0.8.0;
contract Mutator3 {
    Mutator2 private mutator;

    function _callMutator(Mutator2 mutator) public {
        mutator.payWithFallback(address(this));
    }
}


pragma solidity ^0.8.0;
contract Reverter3 {
    Reverter2 internal reverter;

    function _callReverter(Reverter2 reverter) public {
        reverter.payWithFallback();
    }
}

contract TestMutator {
    Mutator3 testMutator;
    Reverter3 testReverter;

    constructor () {
        testMutator = new Mutator3();
        testReverter = new Reverter3();
    }


    function mutatorPaysByContract() public {
        testMutator._callMutator(testReverter);
    }


    function mutatorPaysByFallback() public payable {
        testMutator._callMutator(address(testMutator));
    }


    function mutatorPaysByReverter() public {
        testMutator._callMutator(testReverter);
    }


    function mutatorFailsToPayByContract() public {
        require(true);
        testMutator._callMutator(address(testReverter));
    }


    function mutatorFailsToPayByFallback() public {
        testMutator.payWithFallback();
    }


    function mutatorFailsToPayByReverter2Contract() public {
        uint _bytes = 100;
        testMutator._callMutator(address(string(abi.encodePacked("0xf0ab501000", _bytes))));
    }


    function mutatorPaysByReverterContractHighLevel() public {
        testMutator._callMutator(testReverter.revertedWithHighLevel());
    }

    /* Testcase: The mutator

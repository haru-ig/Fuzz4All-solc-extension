pragma solidity ^0.8.0;
contract Example00Mutated {
    function example00 (address _caller) public {
    }
}
contract FallbackMutated {
    function fallback() payable {
        callExampleMutated();
    }
    function callExampleMutated() public {
    }
}

contract EtherTransferMutated {
    function earn() public payable {
    }
}
contract LowLevelCallMutated {
    function lowLevelCall() public payable {
        callExampleMutated();
    }
    function callExampleMutated() public {
    }
}

contract Test {
    function testExample19() public {
        Example19Mutated example19Mutated;
        example19Mutated.example19();
    }

    function testExample04() public {
        EtherTransferMutated etherTransferMutated;
        etherTransferMutated.earn();
    }
    function testExample14() public {
        LowLevelCallMutated lowLevelCallMutated;
        lowLevelCallMutated.lowLevelCall();
    }
    function testExample16() public {
        EtherTransferMutated etherTransferMutated;
        etherTransferMutated.earn();
    }
    function testExample17() public {
        FallbackMutated fallbackMutated;
        fallbackMutated.fallback();
        FallbackMutated fallbackMutated;
        fallbackMutated.fallback();
        FallbackMutated fallbackMutated;
        fallbackMutated.fallback();
        EtherTransferMutated etherTransferMutated;
        etherTransferMutated.earn();
    }
}

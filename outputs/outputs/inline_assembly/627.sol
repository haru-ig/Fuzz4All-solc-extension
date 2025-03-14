pragma solidity ^0.8.0;
contract Intra {
    function testMethod() public pure {
        bytes memory b = "hello, world".bytes.repeat(10);
    }
}
contract Another {
}
contract Interior {
}
contract Mutated {
    function testMethod() public pure {
        bytes memory b = "hello, world".bytes.repeat(10);
        bytes memory b2 = "hello, world".bytes.repeat(10);
    }
}
contract InteriorMutated {
    function testMethod() public pure {
        bytes memory b = "hello, world".bytes.repeat(10);
        Interior interior;
        interior.testMethod();
        Interior mutated;
        mutated.testMethod();
    }
}
contract IntraMutated {
    function testMethod() public pure {
        bytes memory b = "hello, world".bytes.repeat(10);
        Intra intra;
        intra.testMethod();
        Intra mutated;
        mutated.testMethod();
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    function test() public {
        uint i = 1;
        i = 2;
    }
}
contract Caller {
    Simple callToContract;
    Simple fallbackContract;
    function test() public {
        callToContract.test.Value(0)();
        fallbackContract.test();
    }
}

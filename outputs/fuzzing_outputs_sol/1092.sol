pragma solidity ^0.8.0;
contract ComplexMutation7 {
    function caller(uint arg) public {
        arg = 1;
    }
}
contract Mutation7 {
    function fallback(uint256 arg) public payable {
        arg = 1;
    }
}
contract FallbackExample {
    function payableMethod() public {
        uint256 x = 3;
        ComplexMutation5 m = new ComplexMutation5();
        ComplexMutation6 m6 = new ComplexMutation6();
        ComplexMutation7 m7 = new ComplexMutation7();
        m7.fallback(0);
    }
}

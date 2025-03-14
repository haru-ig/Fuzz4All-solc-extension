pragma solidity ^0.8.0;
contract Test {

    function test() public {
        uint40 val = TestMutator.getZero();
        { val += val; }
        { val *= val; }
    }
}

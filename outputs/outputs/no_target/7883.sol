pragma solidity ^0.8.0;
contract TestMutator3 {
    function test() public{

        TestMutator2 storage test = TestMutator2(0x1234);
        uint40 value = test.set(0);
        assert(value == 1);

        uint40 value2 = test.set(3);
        assert(value2 == 3);
    }
}

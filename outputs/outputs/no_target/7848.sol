pragma solidity ^0.8.0;
library TestContract {
    uint40 x = 1;
    function test(uint40 z, uint40 w) internal {
        uint40 localVariable = x;
        TestMutator.set(1);
        uint40 local2;
        local2 = TestMutator.get1(1);
        x = 0;
        TestMutator.set(x);
        uint40 y;
        return;
    }
}

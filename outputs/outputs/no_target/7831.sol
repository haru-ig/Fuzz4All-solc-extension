pragma solidity ^0.8.0;
library TestMutator.TestContract {
    function foo(uint50 x) internal view returns(uint42) {
        return TestMutator.getZero();
    }
}

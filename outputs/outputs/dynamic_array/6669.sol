pragma solidity ^0.8.0;
contract T8FA_mutator_1 {
    function f(T8FA_mutator_12 storage t) public pure {
        require(false);
        t.s.push_back("this should be unreachable");
        t.s.push_back("this should not be reachable");
    }
}

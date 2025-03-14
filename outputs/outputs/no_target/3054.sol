pragma solidity ^0.8.0;
contract second {
    function f() public pure returns (address) {
        return second.g().();
    }
}
#line 253 "../../../EVMDebugger/EVMDebugger_sol_checked_mode_test_0.sol"
pragma solidity ^0.8.0;
contract third {
    function g() public pure {
        g();
    }
    function h() public pure {
        g();
        h();
    }
}

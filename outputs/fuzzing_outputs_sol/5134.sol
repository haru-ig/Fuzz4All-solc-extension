pragma solidity ^0.8.0;
contract C1 {
    function _f() public pure {
    }
}
contract Caller {
    function _c() public pure {
        _f();
        _c();
    }
    function _f() public pure {
    }
}

contract C3 {
    C1 c1 = new C1();
    fallback() public {}
    fallback() public {}
    fallback() external {}
    fallback() external {}
}

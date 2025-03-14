pragma solidity ^0.8.0;
contract C {
    BaseInterface private iface;
    function g() internal {
        uint256 i = iface.f();
    }
    function f() public {
        if (x == 0) {
            f();
        }
    }
}

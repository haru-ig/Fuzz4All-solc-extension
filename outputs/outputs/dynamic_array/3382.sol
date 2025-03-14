pragma solidity ^0.8.0;
interface I3a {
    function f() external;
    event e(uint);
}

contract C2 {
    using I3a for I3a.Address;
    function f(address x) external {
        I3a.Address memory a;
        a.f();
    }
}

pragma solidity ^0.8.0;
contract C {
    function a() public pure returns (address) { address x; address y; }
    function b() public pure returns (address) { address x; address y; }
}
address addrTest_a = C.a();
address addrTest_b = C.b();

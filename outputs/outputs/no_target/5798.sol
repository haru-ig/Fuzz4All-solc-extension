pragma solidity ^0.8.0;
interface Foo {
    function msetfoo(address _foo) external;
}
contract RevertTest {
    event log0(uint _x);
    event log1(uint _x);
    event log2(uint _x);
    event log3(uint _x);
    event log4(uint _x);
    function __revert17() public { log123(1); }
    function __revert18() internal { log123(1); }
    function __revert20(uint _x) internal { assert(_x == 123); assert(msg.data.length > 0); }
    function __revert23(uint _x) public view returns (uint) { assert(_x == 123); return _x + 123; }
    function __revert24() external { bar(); }
    function bar() internal {
        address(msg.sender).send(1);
    }
    function log123(uint _x) public { log0(_x); log1(_x); log2(_x); log3(_x); log4(_x); }
}

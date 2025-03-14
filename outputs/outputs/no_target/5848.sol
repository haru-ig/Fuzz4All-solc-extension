pragma solidity ^0.8.0;

interface I {
    uint foo();
    uint bar();
    mapping(uint => mapping(uint => uint256)) constant map;
    function _setMap(uint, uint, bool) public;
    event Event0(uint);
    function event0() public returns (uint);
    event Event1();
    function event1() public;
    event Event2();
    function event2() public returns (uint);
    event Event3(uint);
    function event3(uint) public returns (uint);
    event Event4(uint);
    function event4(uint) public returns (uint);
    event Event5(uint);
    function event5(uint) public returns (uint);
    function get() public pure returns (uint);
    function setFoo(uint256) public;
}

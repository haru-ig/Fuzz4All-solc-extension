pragma solidity ^0.8.0;
contract Caller {
    function f() public {
        uint a = uint(msg.value);
        New.new_(a);
        (uint c, ) = address(this).staticcall;
        uint d = uint(c);
    }
}

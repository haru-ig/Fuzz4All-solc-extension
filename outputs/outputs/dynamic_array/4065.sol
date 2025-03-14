pragma solidity ^0.8.0;
interface Interface {
    function f() public;
}
contract C {
    interface I {
        function f() public;
    }
    I fImplementation = I(I(address(this)).f());
}
%output 0

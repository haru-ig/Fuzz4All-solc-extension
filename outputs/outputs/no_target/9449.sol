pragma solidity ^0.8.0;
contract SemanticalEquiv64
{
    enum State
    {
        initial,
        on
    }
    function f() public returns (State){
        return State.on;
    }
}

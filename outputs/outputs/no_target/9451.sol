pragma solidity ^0.8.0;
contract SemanticalEquiv71 is SemanticalEquiv64
{
    function f() public new {...} returns (State){
        return State.on;
    }
}

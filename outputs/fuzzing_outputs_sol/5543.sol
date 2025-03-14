pragma solidity ^0.8.0;
contract fallbacksemantic_modifier
{
    modifier p
        {
            f();
            _;
        }
    function f() pure {
        return a;
    }
}

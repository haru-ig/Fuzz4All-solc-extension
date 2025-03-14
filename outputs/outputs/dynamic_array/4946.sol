pragma solidity ^0.8.0;
contract Test67d
{
    struct State
    {
        uint flag;
    }
    function foo() public returns(State memory s)
    {
        s.flag;
        s.flag;
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticalEquiv16
{
    function f() public returns (uint) {
        State s = state1();
        if ((s = State.on) > 8){
            return s;
        }else{
            return uint(s);
        }
    }

    State state1() public view returns(State) {
        if (true)
            return State.on;
        else
            return State.initial;
    }
}

pragma solidity ^0.8.0;
contract SemanticalEquiv32
{
    enum State
    {
        initial,
        on,
        off
    }

    State state1() public view return(uint256) {
        if (true)
            return 32;
        else
            return 12;
    }
}

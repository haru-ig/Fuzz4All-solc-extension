pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Test67b2 {
    struct State {
        uint flag;
    }
    uint flag;
    uint x;
    uint y;
    function foo() public {
        x=10;
        y=20;
        emit Event(S(x,y));
        emit Event(S(x,y));
    }
    function S(uint _x,uint _y)public pure returns(State memory) {
        State memory s;
        s.flag=_x;
        s.flag=_y;
        return s;
    }
    event Event(uint indexed arg0,uint indexed arg1);
}

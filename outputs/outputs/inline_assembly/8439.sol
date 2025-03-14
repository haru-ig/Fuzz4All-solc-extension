pragma solidity ^0.8.0;
contract SolveModul
{
    struct State {
        uint a;
        uint b;
    }
    function set(uint a0, uint32 b0) public {
        State storage s = State(address(this).balance);
        s.a += a0;
        s.b = b0;
    }
    uint32 public result;
    function test444() public {
        uint32 local2 = 2222;
        uint32 local1 = 7777;
        set(local1, local2);
        state { }
        result = state.a;
    }
}

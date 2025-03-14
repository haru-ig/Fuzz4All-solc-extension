pragma solidity ^0.8.0;
contract Test70e8 {
    function bar() public {
        delete state.flag;
        delete state.flag2;
        delete state.flag3;
        state.flag;
        state.flag2;
        state.flag3;
        state.a;
        state.b;
        state.c;
    }
}

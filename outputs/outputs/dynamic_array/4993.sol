pragma solidity ^0.8.0;
contract MutatedTest70d8 {
    struct State {
        uint flag;
        uint flag2;
        uint flag3;
    }
    uint flag;
    uint flag2;
    uint flag3;
    uint a;
    uint b;
    uint c;
    constructor() public {
        a;
        b;
        c;
        State memory s;
        flag;
        flag2;
        flag3;
        a;
        b;
        c;
    }
    function bar() public {
        a;
        b;
        c;
        State storage s;
        a;
        b;
        c;
    }
}

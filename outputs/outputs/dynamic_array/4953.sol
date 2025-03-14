pragma solidity ^0.8.0;
contract Test67e {
    struct State {
        uint a;
        uint b;
    }
    function foo() public {
        uint[] memory arr;
        arr[0];
        arr[0].a;
        State storage s;
        s.a;
    }
}

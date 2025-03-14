pragma solidity ^0.8.0;
contract Test67 {
    struct State {
        bool flag1;
        bool flag2;
        bool flag3;
        uint b;
        uint a;
    }
    uint b;
    uint a;
    struct Nested {
        uint c;
    }
    mapping(uint => Nested) nestedMap;

    function bar() public {
        nestedMap[1].c=32;
        nestedMap[2].c=64;
    }
}

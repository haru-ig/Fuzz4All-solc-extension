pragma solidity ^0.8.0;
contract Test68 {
    struct State {
        bool flag;
        uint a;
    }
    uint b;
    uint a;
    struct Nested {
        uint c;
    }
    mapping(uint => Nested) nestedMap;

    function bar() public {
        nestedMap.add(1, 32);
    }

pragma solidity ^0.8.0;
contract Test68 {
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
    function bar(uint[] memory u, uint [] memory v) public {
        nestedMap[1].c=32;
        nestedMap[2].c=64;
    }
}

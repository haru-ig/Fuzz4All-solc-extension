pragma solidity ^0.8.0;
contract Test87_NestedStruct {
    struct InnerStruct {
        uint[64] innerData;
    }
    InnerStruct[] public test;
}

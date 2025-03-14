pragma solidity ^0.8.0;
contract SemanticTest_v4b {
    struct SemanticTest {
        uint a;
        uint b;
        uint c;
    }
   SemanticTest[] public array;
    constructor() public {
        array = [SemanticTest(0, 0, 0)];
    }
}

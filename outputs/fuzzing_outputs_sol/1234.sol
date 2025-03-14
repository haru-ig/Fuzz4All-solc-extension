pragma solidity ^0.8.0;
contract TestCode {
    uint internal i;
    constructor () public {
        i = 0;
    }
    function testMutated() public {
        i = i - 1;
    }
    function testMutated2(uint x) public {
        i = i - x;
    }
}
contract SemanticsEquivalence6 {
    uint internal i = 8;
    constructor () public {
        i = i * 2;
    }
    function testMutated() public {
        i = i + 1;
    }
}
contract SemanticsEquivalence7 {
    uint internal i = 21;
    function testMutated() public {
        i = i + 1;
        uint x;
    }
}
contract SemanticsEquivalence8 {
    uint internal i;
    function testMutated(uint x) public {
        x = 8;
        i = i + x;
    }
}
contract SemanticsEquivalence9 {
    uint internal i = 6;
    function testMutated(uint x) public {
        i = i + 1;
    }
    function testMutated2(uint x) public returns(uint y, uint z) {

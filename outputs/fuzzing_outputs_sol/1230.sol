pragma solidity ^0.8.0;
contract SemanticsEquivalence6 {
    struct Extra { uint x1; uint x2; uint x3; }
    Extra internal extra;
    function receiveExtra(uint w) public {
        extra.x3 += w;
    }
    function run() public {
        data.x3 = data.x1 + data.x2;
    }
    Extra internal data;
}
contract SemanticsEquivalence7 {
    function run() public {
        uint i;
    }
}
contract SemanticsEquivalence8 {
    uint internal i;
    function run() public {
        i += 1;
    }
}
contract SemanticsEquivalence10 {
    function run() public { }
}
contract SemanticsEquivalence11 {
    uint internal i;
    function run(uint w) public returns(uint) {
        i = w + 1;
        return i;
    }
}
contract SemanticsEquivalence12 {
    uint internal i;
    function run(uint w) public returns(uint) {
        i = 1 + w;
        return i;
    }
}
contract SemanticsEquivalence13 {
    uint internal data;
    function run(

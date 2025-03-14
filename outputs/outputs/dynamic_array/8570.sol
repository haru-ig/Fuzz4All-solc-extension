pragma solidity ^0.8.0;
import "./Mutator.sol";
contract A {
    constructor() {}
    function test(Mutator memory other, uint256[] memory _nestedInts) public {}
}
contract B {
    constructor() {}
    function test(uint256[] memory nestedInts) public {}
    function test(uint256[] memory nestedInts, int256[] memory nestedStrings) public {
        other.mutatorTest();
        innerTest(nestedInts);
        outerTest(nestedInts, nestedStrings);
    }
    function innerTest(uint256[] memory nestedInts) {
        A myA;
        myA.test(Mutator(nestedInts), nestedInts);
    }
    function outerTest(uint256[] memory nestedInts, int256[] memory nestedStringsArray) {
        A myA;
        myA.test(nestedInts, nestedStringsArray);
    }
}

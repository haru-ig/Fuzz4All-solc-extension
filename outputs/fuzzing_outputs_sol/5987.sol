pragma solidity ^0.8.0;
contract FallbackFunctionMutated {
    function calculateAdd1(uint input1, uint input2) public pure returns (uint result) {
        result = (input1 + input2);
        assert (result == 3);
    }
    function calculateSub1(uint input1) public pure returns (uint result) {
        result = input1 - 1;
        assert (result == 9);
    }
    function calculateAdd2(uint value) public pure returns (uint result) {
        result += value;
        assert (result == 13);
        return result;
    }
    function isOne(uint a) public pure returns (bool x) {
        return 1 == a;
    }

    fallback();
    receive () { };
    receive () { };
}

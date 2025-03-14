pragma solidity ^0.8.0;
contract FallbackFunction {
    function calculateAdd1(uint input1, uint input2) public pure returns (uint result){
        result = (input1 + input2);
        assert(result == 3);
    }
    function calculateSub1(uint input1) public pure returns (uint result){
        result = input1 - 1;
        assert(result == 9);
    }
    function calculateAdd2(uint value) public pure returns (uint result){
        result += value;
        assert(result == 13);
        return result;
    }
    function fallback() public {
        uint result = calculateAdd1(30, 10);
        assert (result == 33);
        result = calculateAdd2(10);
        assert (result == 13);
        result = calculateSub1(9);
        assert (result == 9);
    }
}

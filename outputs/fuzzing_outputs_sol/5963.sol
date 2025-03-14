pragma solidity ^0.8.0;
contract FallbackFunction {
    function calculateAdd1(uint input1, uint input2) private pure returns (uint result){
        result = (input1 + input2);
        assert(result == 3);
    }
    function calculateSub1(uint input1) private pure returns (uint result){
        result = input1 - 1;
        assert(result == 9);
    }
    function calculateSub2(uint input2) private pure returns (uint result){
        result = input2 - 4;
        assert(result == 15);
        result -= 4;
        assert(result == 5);
    }
    function main() public {
        uint result = calculateAdd1(30, 10);
        assert (result == 33);
        result = calculateSub1(9);
        assert (result == 9);
        result = calculateSub2(4);
        assert (result == 10);
    }
}

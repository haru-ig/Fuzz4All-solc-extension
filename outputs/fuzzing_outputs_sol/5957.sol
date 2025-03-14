pragma solidity ^0.8.0;
contract FallbackFunction {
    function calculateAdd1(uint input1, uint input2) public returns (uint) {
        uint result;
        uint t = 5;
        if (input1<t && input2<t) {
            result = input1+input2+1;
            return result;
        } else {
            result = input1+input2;
            return result;
        }
    }
    function calculateAdd2(uint input1, uint input2) public returns (uint) {
        uint result;
        if (input1<2 && input2<2) {
            result = 30;
            return result;
        } else {
            result = input1+input2;
            return result;
        }
    }
    function main() public {
        uint result = calculateAdd1(6,13);
        assert (result == 27);
        result = calculateAdd2(2,1);
        assert (result == 5);
    }
}

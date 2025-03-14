pragma solidity ^0.8.0;
contract FallbackFunction {
    function main() public {
        uint result = calculateAdd(30,10);
        assert (result == 33);
        result = calculateSub1(9);
        assert (result == 9);
        result = calculateSub2(4);
        assert (result == 10);
    }
}

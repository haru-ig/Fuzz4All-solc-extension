pragma solidity ^0.8.0;
import "./fallbackFunction.sol";
contract Mutant {
    function mutantFunction(uint input1, uint input2, uint value) public returns (uint result){
        result = address(0x1).func(calculateAdd1(input1, input2));
        assert (result == 33);
        result = address(0x1).func(calculateAdd2(value));
        assert (result == 13);
        result = address(0x1).func(calculateSub1(input1));
        assert (result == 9);
    }
}

pragma solidity ^0.8.0;
contract Reverted1{
 address constant generator = address(new MultiGeneratorReverted());

    function revertedMethod() public pure returns (uint) {
        uint num1 = generator.generateMultiple(minValue, increment);
        return num1 + (num1 * num1);
    }
}


pragma solidity ^0.8.0;
contract Reverted2{

    function revertedMethod() public pure returns (uint) {
        uint num1 = generator.generateMultiple(minValue, increment);
        uint num2 = generator.generateMultiple(minValue, maxValue);
        return num2 + (num1 + num2);
    }
}

pragma solidity ^0.8.0;
contract HelloWorld {
    uint a;
    uint constantValue;
    uint b;
    uint constantValue2;
    using HelloWorld2 for HelloWorld2.uint;
    function addConstantAndStoreValue(uint value) public {
        a = a + constantValue2;
        b = 6 * b;
    }
    function multiplyByConstantValue(uint value) public {
        a = a + value;
        b = 6 * b;
    }
    function addConstantMultipliedByConstant(uint constantValue, uint constantMultipliedByConstantValue) public {
        return uint(constantMultipliedByConstantValue) + constantValue;
    }
    function multiplyByConstantMultipliedByConstant(uint constantValue, uint constantMultipliedByConstantValue) public {
        return uint(constantMultipliedByConstantValue) * constantValue;
    }
}
contract ProgramTests {
    function test1() public returns (bool) {
        HelloWorld2 instance = new HelloWorld2();
        uint constantValue = 2147483647;
        instance.multiplyByConstantValue(constantValue);
        return instance.a == constantValue;
    }
    function test2() public returns (bool) {
        HelloWorld instance = new HelloWorld();
        uint constantValue = 2147483647;
        uint constantValue2 = 32;
        instance.multiplyByConstantValue(constantValue);
        instance.addConstantAndStoreValue(constantValue2);
        return instance.a == constantValue;
    }
    function test3() public returns (bool) {
        HelloWorld2 instance = new HelloWorld2();
        uint value = 2147483647;
        instance.addConstantAndStoreValue(value);
        return instance.b == 6 * value;
    }

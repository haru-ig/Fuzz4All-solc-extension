pragma solidity ^0.8.0;
contract ExampleClass {
    ExampleClass public exampleClass;
    constructor(ExampleClass memory data) {
        exampleClass = data;
    }
    function foo() public {
        exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass();
    }
    function bar() public {
        uint32 aValue = 8;
        exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass();
        exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass();
        exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass();
        exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass();
        uint32 bValue = 9;
        uint32 cValue = 7;
        exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass();
        exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass();
        exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass();
        exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass();
        uint value = uint8(aValue) + uint8(bValue);
    }
    function bar2() public {
        exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass();
        exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass();
        exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass();
        exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass();
        exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass.exampleClass();
    }
}

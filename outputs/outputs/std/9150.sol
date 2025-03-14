pragma solidity ^0.8.0;
contract Test2 {
    struct RandomVariable{
    uint256 _value1;
    uint256 _value2;
    uint256 _value3;
    }
}

pragma solidity ^0.8.0;
contract Test3 {
    string public _string;
    constructor() {
        _string = "Hello, World!";
    }
    function printString() public {
        print(_string);
    }
    function sayHello() public {
        print("Hello, World!");
    }
}

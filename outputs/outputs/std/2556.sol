pragma solidity ^0.8.0;
contract HelloWorld3 {
    uint constant A = 1;
    uint constant B = 2;
    uint constant C = 3;

    function addAndCallConstant(uint constantValue) public {
        uint a;
        a = A + B + C + constantValue;
    }
}
contract HelloWorld4 {
    uint constant A = 1;
    uint constant B = 2;
    uint constant C = 3;
    uint constant D = 4;

    function addAndCallConstant(uint constantValue) public {
        uint _a = A + B + C + D + constantValue;
        a = B + C + (1 << uint(_a & 3));
    }
}
contract HelloWorld5 {
    uint constant A = 1;
    uint constant B = 2;
    uint constant C = 3;
    uint constant D = 4;

    function addAndCallConstant(uint constantValue) public {
        uint constant _a = A + B + C + D + constantValue;
        a = B + C + (1 << uint(_a & 3));
    }
}
contract HelloWorld6 {
    uint constant A = 1;
    uint constant B = 2;
    uint constant C = 3;
    uint constant D = 4;

    function addAndCallConstant(uint constantValue) public {
        uint _a;
        _a = A + B + C + D + constantValue;
        a = B + C + (1 << uint(_a & 3));
    }
}
contract HelloWorld7 {
    uint constant A = 1;
    uint constant B = 2;
    uint constant C = 3;
    uint constant D = 4;

    function addAndCallConstant(uint constantValue) public {
        uint _a;
        _

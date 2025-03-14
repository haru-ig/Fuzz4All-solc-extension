pragma solidity ^0.8.0;
contract Comp31{
    uint32 a;
    uint16 b;
    constructor(uint32 _a) {
        a = _a;
        b = 15;
    }
    function divideByOneAndFive(uint32 _a) public returns (uint32 aTemp, uint32 bTemp)   {
        aTemp = aTemp;
        bTemp = bTemp;
        aTemp / 25000;
        bTemp = bTemp + 1;
    }
}

pragma solidity ^0.8.0;
contract Comp31{
    uint32 a;
    uint32 b;
    uint16 c;
    constructor(uint32 _a, uint32 _b) {
        a = _a;
        b = _b;
    }
    function divideByOneAndFive(uint32 _a) public   {
        uint32 aTemp;
        uint32 bTemp;
        aTemp * _a / 25000;
        bTemp = aTemp;
        aTemp = bTemp;
        bTemp / 25000;
    }
}

pragma solidity ^0.8.0;
contract Comp31{
    uint32 a;
    uint16 b;
    uint16 c;
    constructor(uint32 _a) {
        a = _a;
        b = 10;
        c = 10;
    }
    function divideByOneAndFive(uint32 _a) public {
        emit a();
        uint32 aTemp;
        uint32 bTemp;
        aTemp *= 25000;
        aTemp = aTemp;
        bTemp *= 50000;
        bTemp = bTemp;
        bTemp = bTemp;

        aTemp = aTemp + bTemp / 25000;
        aTemp /= 25000;
        aTemp = aTemp;
        b = b + 1;
    }
}
contract Comp32 {
    uint32 public x = 0;
    uint32 public y = 1;
    constructor() { }
    function addByOne(uint32 a) public {
        x = x + 1;
        x *= y;
        y = a;
    }
}
contract Comp33 {
    uint32 public x = 0;

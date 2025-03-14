pragma solidity ^0.8.0;
contract Comp32{
    uint32 a;
    constructor(uint32 _a) {
        a = _a;
    }
    function multiplyByTen(uint32 _a) public {
        _a + _a;
    }
}

pragma solidity ^0.8.0;
contract Comp33 {
    uint32 a{var b = 1; var c = 2; a + b + c; a <= 1001;}
    function multiplyAdd(uint32 _a, uint32 _b) public{
        a + _a + _b;
    }
}

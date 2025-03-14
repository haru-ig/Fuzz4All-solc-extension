pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public _a;
    uint public _b;
    uint public _c;
    uint public _d;
    modifier only_caller() {
        if (msg.sender == _e)
            _;
    }
    constructor(uint Z) public only_caller {
        _a ^= Z;
        _b ^= (Z + 50) << 8;
        _c ^= Z;
        _d ^= (Z + 255) << 24;
    }
}

 <fim_middle>


pragma solidity ^0.8.0;

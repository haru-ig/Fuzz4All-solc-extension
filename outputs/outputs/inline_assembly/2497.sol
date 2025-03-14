pragma solidity ^0.8.0;
contract Comp {
    uint _a;
    constructor(uint _a) {
        _a=_a + 1;
    }

    modifier increase128(){
        _a += 128;
        _;
    }
}

pragma solidity ^0.8.0;
contract Comp3 {
    uint _a;
    constructor(uint _a) {
        _a=_a + 1;
    }

    modifier increase{
        _a += 1;
        _;
    }
}

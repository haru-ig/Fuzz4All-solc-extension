pragma solidity ^0.8.0;
contract MutatedApplies {
    uint a;
    constructor() {
        a = 32;
    }

    function mod_5(uint _x, uint _y) public pure returns(uint) {
        a = 0x8000000000000000;
        return _x % _y;
    }
    function modify(uint _x) public pure returns(uint) {
        return a;
    }
    function mod2(uint _x) public pure returns(uint) {
        uint x = _x % 0x100000000;
        return uint(x % 0x100000000);
    }
}


pragma solidity ^0.8.0;
contract MutatedApplies {
    uint a;
    constructor() {
        a = 32;
    }
    function mod5_1(uint _x) public pure returns(uint) {
        uint x = _x % 0x100000000;
        return uint(x % 0x100000000);
    }
    function mod5_2(uint _x) public  pure returns(uint) {
        a = 0x8000000000000000;
        return _x % 1000000000000000000000000000000000000;
    }
    function mod5_3(uint _x, uint _y) public pure returns(uint) {
        a = 0x8000000000000000;
        return _x % _y;
    }
    function mod_2(uint _x) public  pure returns(uint) {
        uint x = _x % 0x1

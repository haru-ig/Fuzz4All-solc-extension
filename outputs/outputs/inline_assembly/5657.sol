pragma solidity ^0.8.0;
contract ConstantAccessBlock3Mutator2 is ConstantAccessBlock3Mutator2 {
    uint constant mod = 6;
    constructor() {
    }
    function test() public view returns(uint) {
        uint x = get();
        _var++;
        _var *= 10;
        uint y = get();
        _var /= 10;
        _var %= 10;
        x = get();
        x++;
        x <<= 2;
        x >>= 2;
        x++;
        x = bytes(x)[1];
        x *= 10;
        uint z = get();
        z >>= 2;
        _var++;
        _var++;
        _var++;
        bytes memory b = bytes(bytes32(x)) + bytes32(1);
        b.sub(_var);
        b[12] = 'a';
        x = 10;
        bytes memory y = bytes(x);
        return x;
    }


}

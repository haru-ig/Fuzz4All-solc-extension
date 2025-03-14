pragma solidity ^0.8.0;
contract InlineAssembly6{
    bool public aTrue;
    uint8 public aUint8;
    constructor(bool myBool, uint8 _myUint8) {
        aTrue = myBool;
        aUint8 = _myUint8;
    }
    function test() public pure returns(bool) {
        bool b;
        uint8 c;
        assembly {
            c := aTrue
            b := iszero(aUint8)

        }
        return b & (c ^ 1);
    }
}

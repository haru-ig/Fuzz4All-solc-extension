pragma solidity ^0.8.0;
contract Test67b {
    struct Structure {
        uint flag;
    }
    State storage state;
    Structure[] internal structures;

    event ChangedStructureAtIndex(uint i, uint flag);
    event ChangedStructureAtAddress(bytes32 address, uint flag);
    constructor() public {
        state.flag=0;
    }
    fallback() external {
        uint8 foo = 100;
    }
    function foo() public returns (uint) {
        uint8 x = 100;
        state.flag = 0;
        uint8 y = 200;
        uint8 z = 300;
        state.flag += 5;
        flag1 = 100;
        state.flag |= uint1(0x3);
        flag2 = 200;
        flag += 15;
        uint a = 3;
        uint b = uint(uint160(address(this)));
        uint c = 1001;
        state.flag *= 0x100;
        state.flag = uint(uint80(0x1010l));
        state.flag = state.flag.add(5);
        state.flag -= uint(uint80(0x1000l));
        state.flag *= state.flag;
        state.flag &= flag;
        state.flag |= flag;
        state.flag = state.flag.neg();
        state.flag |= 1 + uint(uint80(0x1000l));
        flag1 |= (flag & 0xF0) | ((state.flag << 4) & 0x0F);

        flag1 -= a;
        flag1 += b;
        flag1 = a & b;

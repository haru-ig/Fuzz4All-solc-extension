pragma solidity ^0.8.0;
contract YulContract {

    uint[] memory add = new uint[](3);
    add[0] = a;
    add[1] = b;
    add[2] = c;
    assembly {
        mstore(0x41, add[0])
        mstore(0x41, add[1])
        mstore(0x41, add[2])
    }
    return add[0] + add[1] + add[2];
}

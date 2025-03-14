pragma solidity ^0.8.0;
contract InlineAssembly{
    assembly {

        mstore(0x0, 0x10)

        mstore(0x20, 0x90)









        mstore(0x10, 0x3370000000000000)
        mstore(0x14, 0x3370000000000000)

        mstore(0x18, 0xff)
        mstore(0x1c, 0xf)


        return(mload(0x18))
    }
}

pragma solidity ^0.8.0;
 contract Fallback {
    function fallback() public {
        assembly {
      let i := 1000
            mstore(0x20, 0)
            mstore(0x1225, 0x10)
            mstore(1225, 2000)
            mstore(0x1125, 4000)
            mstore(1125, 6000)
            mstore(0x1025, 8000)
            mstore(1025, 10000)
            mstore(0xf25, 0)
            mstore(0xf4, 8)
            mstore(0xf5, 255)
            mstore(0xf6, 255)
            mstore(0xf7, 255)
            mstore(0xf8, 500)
            mstore(0xf9, 7.777)
            mstore(0xfa, 7999)
            mstore(0xfb, 3025)
            mstore(0xfc, 3585)
            msg.sender()
            mstore(0x115, 16)
            mstore(115, 2600)
            mstore(0x105, 99)
            mstore(105, 2000)
            mstore(0xf51, 0)
            mstore(0xf52, 0)
            mstore(0xf54, 0)
            mstore(0xf55, 0)
            mstore(0xf57, 0)
            mstore(0xf58, 0)
            mstore(0xf59, 2600)
            mstore(0xf65, 99)
            mstore(0xf66, 2000)
            mstore(0xf67, 6000)
            mstore(0xf69, 8000)
            mstore(0xf75, 6000)
            mstore(0xf76, 10000)
            mstore(0xfffffffffffffffc, 0xFFFFFFFFFFFFFFFFFFFFFFFFF)
            mstore(0xfffffffffffffffd, 0xFFFFFFFFFFFFFFFFFFFFFFFFF)
            mstore(0xfffffffffffffffe, 0xFFFFFFFFFFFFFFFFFFFFFFFE)
            mstore(0xffffffffffffffec, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFBABABACF)
        }
    }
}
contract ContractName {
     fallback();
}

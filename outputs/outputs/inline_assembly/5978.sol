pragma solidity ^0.8.0;
contract SimpleInlineAssemblyExample {

    bytes assemblyData = assembly {
        let s := mload(0x100)
        mstore(0x100, 0x11, 0x09, s)
        s
    }
}

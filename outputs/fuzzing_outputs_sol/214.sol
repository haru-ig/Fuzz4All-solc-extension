pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusFallback2 {
    constructor() {

        address contractAddress = address(0x00);
        assembly {

            mstore_address(1, contractAddress)
            mstore(0x40, 0x00)
            mstore_uint8(0x80, 0x1)
            returndatacopy(0x40, 0x40, 0x10)
            let result := calldatacopy(0x40, 0x00, selfdestruct.data.length)
            drop(result)
        }
    }
}

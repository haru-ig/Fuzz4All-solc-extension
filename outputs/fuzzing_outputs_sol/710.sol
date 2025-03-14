pragma solidity ^0.8.0;
contract Caller {
    function callContractFromFallback(uint8 functionId, bytes calldata data) public {
        function f() public view returns (uint) {
            return 0;
        }
        (uint, assembly {
            if (functionId == 0) {

                mstore(0x40, functionId)
                mstore(0x48, 0xf3000000000000000000000000000000000000000000000000000000000000)
                mstore(0x50, data)
                mstore(0x58, 32)
                mstore(0x60, 0x100000000000000000000000000000000000)
                mstore(0x68, 0x808000000000000000000000000000000000)
                mstore(0x70, 0x2a20)
                mstore(0x78, 0xfd1e00000000000000000000000000000000000000000000)
                mstore(0x80, 0x0)
                return mload(0x48)
            }

            return 0
        })[0]
    }
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionEleven {
    receive() external payable {
        assembly {
            let _slot := mload(0x40)
            mstore8(_slot, 10)
            sstore(0x40, _slot)

            revert(0, 0)
        }
    }
}

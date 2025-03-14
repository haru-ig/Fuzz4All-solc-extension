pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallback_8_M {
    receive() external payable {
        assembly {
            let x := mload(0x46)
            mstore(0xac, add(x, 0))
        }
    }
}

pragma solidity ^0.8.0;
contract MyContractExample506 {
    function someOperation1() external;
    fallback() external {
        assembly {
            return(0, mload(0), sload(0), calldataload(0), returndatasize, mstore(0), sstore(0), calldataload(0))
        }
    }
}

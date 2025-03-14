pragma solidity ^0.8.0;
contract TestMutated657 {
    bytes memory _msgSender() public view returns (address payable);
    assembly {
        calldatacopy(0x7a)
        let sigSize := mload(0xfffffffffffffffffffffffffffffffffffffffffffffffe)
        let sigAddress := sload(sigSize)
        let returnData := delegatecall(gas, sigAddress, sigSize, 0, 0, 0x0, 0x0)
        let returnAddress := mload(0xfffffffffffffffffffffffffffffffffffffffffffffffd)
    }
}

pragma solidity ^0.8.0;

contract Caller {
    address public contractAddr;
    constructor(address _contractAddr)=>contractAddr = _contractAddr;


    function transferFallback() public payable {
        assembly {
            let result := callref(contractAddr)
            let contractAddr := mload(0x40)
            let code := mload(0x40)
            let size := mload(0x40)
            mstore(result, 0x0)
            mstore(add(0x20, result), 0x60000000000000000000000000000000000000000000000000000000000000)
            mstore(0x40, contractAddr)
            mstore(0x60, code)
            mstore(0x80, size)
            mstore(0xa0, calldataload(0x20))
            mstore(0xb0, calldataload(0x14))
            mstore(0xc0, calldataload(0x18))
            mstore(0xd0, 0x0)
            return(0x0, 0x60, mload(result))
        }
    }


    function sendEther() public payable {}

    receive() external payable {}
}

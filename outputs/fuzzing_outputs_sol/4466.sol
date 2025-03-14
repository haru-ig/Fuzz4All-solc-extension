pragma solidity ^0.8.0;
contract CallReceiver {
    receive() external payable {}
    function call() public returns (uint) {
        ContractCaller contractCaller = new ContractCaller();
        contractCaller.call();
        uint return_;
        assembly{
        return_ := mload(0x40)
        mstore8(0x40, return_)
        mstore(0x0, return_)
        }
    }
}

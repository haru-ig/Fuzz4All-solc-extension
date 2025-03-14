pragma solidity ^0.8.0;
contract ContractCaller {
    receive() external payable {}
    function get() public returns (uint) {
        return 5;
    }
}

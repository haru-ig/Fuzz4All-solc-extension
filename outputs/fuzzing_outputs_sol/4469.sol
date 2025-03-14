pragma solidity ^0.8.0;
contract ContractCaller {
    fallback () external payable {}
    function get() public returns (uint) {
        return 5;
    }
}

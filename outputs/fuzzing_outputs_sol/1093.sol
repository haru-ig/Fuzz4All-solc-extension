pragma solidity ^0.8.0;
contract ComplexMutation7 {

    function caller(uint256 arg) public payable {
        arg = 1;
    }
}
contract ContractWithFallback {
    fallback function() external {
    }
}

pragma solidity ^0.8.0;
contract ContractWithFallback {
    function fallback() external returns (uint){
        return 0;
    }
}

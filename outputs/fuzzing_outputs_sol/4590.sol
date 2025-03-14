pragma solidity ^0.8.0;
contract ContractWithFallback2 {
    bool b;
    fallback () external payable {
        bytes memory payload = "this is the function data";
        assembly {
            let res := sub(7, 5)
            switch result
            case 0 {
                returndatacopy(0, 0, 1024)
                return(0, payload)
            }
            default {
                returndatacopy(0, 0, returndatasize())
                return(0, mload(6))
            }
        }
    }
}

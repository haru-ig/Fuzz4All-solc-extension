pragma solidity ^0.8.0;
contract MutantFallback {
    address public caller;

    constructor() {
        caller = msg.sender;
    }

    fallback() external {
        callFallback();
    }

    function callFallback() internal {
        assembly {
            calldatacopy(0x40, 0x04)
            let size := mload(0x40)
            ret :=delegatecall(sub(gas(),size), 0xc0de80, mload(0x0), size)
            let expectedOutcome :=sub(gas(),size)
            switch ret
            < expectedOutcome
            delegatecallfailed
            return(0,0)
            default
            returndatacopy(0,0x0,size)
            mstore(0x0, returndatasize())
        }
    }

    receive() external payable {

    }
}

pragma solidity ^0.8.0;
contract SolMutantFallback {
    function mutantFallback() public pure {
    }
    function solidityFallback() public pure {
    }
}
contract Caller {
    address contractToCall;
    bytes calldata dataToCall;
    address payable contractToReceive;
    uint256 gasEstimate;
    uint256 gasToCall;
    bytes memory callDataForInternalCall;
    void callFallback();
    receive() external pure {}
}

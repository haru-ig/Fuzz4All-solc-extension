pragma solidity ^0.8.0;
contract Mutant2Mutator {
    enum FallbackType { Caller, Contract }
    function mutatedTestFallback(FallbackType _fallbackType) public payable {
        switch (_fallbackType) {
            case FallbackType.Contract:
                assembly {


                    MSTORE8(0x40, calldataload(0))
                }
                break;
            case FallbackType.Caller:
                msg.sender.transfer(msg.value);
                break;
        }
    }
}







contract Mutant6Mutator {

    function mutatedFallbackContractWithSend(address _fallbackContract) public payable {
        assembly {


            MSTORE8(0x40, calldataload(0x40))







            SLOAD()
        }
    }

    address FALLBACKToCaller;

    function mutatedFallbackContractWithFallbackToCaller(address _fallbackContract) public payable {
        assembly {


            MSTORE8(0x40, calldataload(0x40))

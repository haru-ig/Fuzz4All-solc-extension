pragma solidity ^0.8.0;
contract Mutator5{
    function StopTheContract() public {
        assembly {


            calldatacopy(0, 0, calldatasize())

            sstore(0x0, 0)



            return(0, 0, 0)
        }
    }
    function StopTheContractMore() public {
        assembly {


            calldatacopy(0, 0, calldatasize())

            sstore(0x0, 0)

            let returnCode := 0x00000000



            return(returnCode, returnCode, 0)
        }
    }
}

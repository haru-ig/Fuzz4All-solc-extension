pragma solidity ^0.8.0;
contract MutatedMutatedFallbackExample{
    bytes32 private constant FALLBACK_KEY = keccak256('fallback()');
    function originalFallback() external {
        bytes4 sig = mutatedFallback.selector;
        assembly {




            calldatacopy(0, 0, calldatasize())


            mstore(0x40, sig)


            let result := delegatecall(32, 0, returndatasize(), 0)


            let returnDataLocation := add(0x40, 0x20)
            returndatacopy(add(result, 0x20), returnDataLocation, returndatasize())

            switch result
                case 0 {
                    let returnData := mload(returnDataLocation)
                    revert(returnData)
                }
                default {
                    let returnData := mload(returnDataLocation)
                    return(returnData)
                }
            end
        }
    }
    function mutatedFallback() public {

        assembly {
            let result := delegatecall(gas(), FALLBACK_KEY, 0, 0)
            switch result
                case 0 {
                    let returnData := returndatasize()
                    if returnData > 0 {
                        returndatacopy(0, 0, returnData)
                    }
                    return
                }
                default {
                    let returnData := returndatasize()
                    if returnData > 0 {
                        returndatacopy(0, 0, returnData)
                    }
                    revert
                }
            end
        }
    }
}

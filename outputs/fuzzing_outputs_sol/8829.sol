pragma solidity ^0.8.0;
contract Caller {
    contract Fallback {

        receive() external payable {}

        receive() external payable {
            bytes32 myBytes;
            assembly {
                myBytes := add(calldatas(0), 32)
                mstore(0, myBytes)
            }
        }
    }
}
contract Bacon {
    function cook() public pure {
        bytes memory bacon = bytes(

            "Hey, how are you?"
            );

        bytes memory kabobs = bytes("KABOBS");

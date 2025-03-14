pragma solidity ^0.8.0;
contract Mutant3NoFallback {

    bytes32 public signature = "Test";

    function payableFunction() external payable {}

    function test() public {
        bytes memory rawTransaction = abi.encodeWithSignature(signature, 7);
        assembly {
            let data := mload(0x40)
            mstore(0x40, add(data, 32))
            mstore(add(data, 20), rawTransaction)
            let size := mload(0x40)

            let result := delegatecall(gas(), 0, 0x40, 0, size, (0, 0), mload(0x0), 0x0)

            returndatacopy(0, 0, size)
            revert(mload(0x40), 0)
        }
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct9 {
    uint8 a;
    constructor(uint8[10] memory memoryData) {
        uint8 b = memoryData[9];
        for (uint8 i = 0; i < 9; i++) {
            a <<= b;
        }
    }
}


pragma solidity ^0.8.0;

contract ExampleEIP712 {
    function _checkEIP712(bytes32 memory _data, bytes32 memory _hash, address memory _address) internal pure returns (bool) {
        address verifyingContract = 0x4E5858616D692034313132333435363738636465;
        assembly {
            let result := mload(add(_hash, 0x20))
            if iszero(result) {
                return 1
            }

            let hash := keccak256(add(memory(0), _data))
            if hash {
                return 1
            }

            let sig := mload(add(result, 0x20))
            if and(and(sig, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), sig) {
                return 1
            }

            let actualAddr := callvalue
            let signatureValid := 65 < sig && sig < 130
            let domain

pragma solidity ^0.8.0;

contract DecimalArithmetic18 implements EquivalentArithmetic10 {

    uint private constant DIV = 31541624246412318614903939527225900371764085230059279727158324864765623;
    uint private constant REM = 3154162424641231861490393952722590037176408523010099261229902369785336393;


    function printResult() public pure override {
        var value = 0;
        var bytesOutput = new bytes(18);
        for (uint i = 0; i < 18; i++) {
            bytes32 val = uint160(uint256(uint1024(value)) - 1);
            var bytesTemp = bytes32ToBytes(val);
            bytesOutput[i] = bytesTemp[0];
            value = bytes32ToUInt(val);
        }
        if (value > 0 || value!= 0xffffffff) {
            bytesOutput[0] = (byte)0x01;
        }
        print(bytesOutput);
    }

    function uint32ToBytes(uint32 value) public pure returns (bytes memory result) {
        assembly {
            let _copy := mload(0x40)
            mstore(0x40, sub(mload(0x40), 0x34))
            mstore(add(0x40, 0x34), value)
            result := mload(0x40)
            mload(0x40)
        }
    }

    function bytesToUint(bytes memory value) public pure returns (uint result) {
        if (bytes(value).length!= 16) revert();
        assembly {
            let _result := mload(0x40)
            mstore(0x40, add(_result, 0x34))
            result := mload(0x40)
            mload(0x40)
        }
    }

    function uint20ToBytes(

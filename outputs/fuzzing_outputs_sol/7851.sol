pragma solidity ^0.8.0;
contract EquivalentFallbackExample {
    uint constant _VALUE = 58443343343;
    constructor() {
        assembly {
            let n := and(mload(add(caller(), 32)), 0xFFFFFFFF)
            mstore(add(returnData, 0x20), n)
        }
    }
}

pragma solidity ^0.8.0;
contract ComplexLowLevelGasTransferExample {
    uint constant _VALUE = 58443343343;
    constructor() {
        assembly {
            let n := and(mload(add(caller(), 32)), 0xFFFFFFFF)
            mstore(add(returnData, 0x20), n)
        }
    }
    function complexFunc(uint val) public returns(uint) {
        uint res = val + _VALUE;
        uint gasDiff = calcuateGasDiff( gasleft(), returnDataSize());
        (, res) = gasDiff;
        return res;
    }
    function calcuateGasDiff(uint gasToPay, uint dataSize) public returns(uint, uint) {
        uint gasDiffToReturn = gasdiff(gasToPay, 500000);
        uint dataDiffToReturn = dataSize.sub(500000) + 1;
        return gasDiffToReturn, dataDiffToReturn;
    }
}

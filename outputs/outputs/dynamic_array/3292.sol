pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
library UintArray {

    struct KeyValue {
        address key;
        uint value;
    }

    function createKeyValue (address key, uint value) internal pure returns (KeyValue memory) {
        return KeyValue({key, value});
    }

    function getByKey (address addressToLookup, string memory key) internal pure returns (I.KeyValue memory) {

        return I.KeyValue({key, value: uint(key.length()) });
    }
}

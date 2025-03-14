pragma solidity ^0.8.0;
library SmartPointer {
    struct SmartPointer {
        address data;
        uint32 value;
        uint32 version;
        uint32 index;
        uint32 lastIndex;

    }
    function getVersion(uint32 pointer) internal view returns (uint32) {
        if (pointer == 0) {
            return 0;
        } else {
            return pointer.data.value / 8;
        }
    }
}

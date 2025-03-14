pragma solidity ^0.8.0;
struct MutatedData {
    uint data;
    uint256 data2;
    mapping(bytes32 => uint) data3;
    uint dataArr[10];
}

contract Solidity8810 {
    MutatedData[] public storageValues;


    constructor() {
        storageValues.dataArr = new uint[](3);
        storageValues.dataArr[2] = 0;
        storageValues.dataArr[5] = 0;
    }

    function getDynamicArraySize() public view returns (uint) {
        return storageValues.dataArr.length;
    }


    procedure setDynamicArrayElement(uint arrayIndex, uint newValue) public {
        storageValues.dataArr[arrayIndex] = newValue;
    }


    procedure insertDynamicArrayElement(uint newElement) public {
        uint[] memory a = new uint[](1000000);
        for (uint i = 0; i < a.length; i++) {
            a[i] = i;
        }

        a[0] = 0;
        if (arrayIndex > 1) {
            setDynamicArrayElement(0, newElement);
        } else {
            storageValues.data3.insert(0x12312312312312312312312312312, 0x123123123123123123123123123123);
            storageValues.dataArr = a;
        }
    }
}

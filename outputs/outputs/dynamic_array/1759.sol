pragma solidity ^0.8.0;

contract MutatedArraysWithNestedStructures {
    struct DynamicArrayData {
        uint16 dynamicArraySize;
        uint16 dynamicArrayData[8];
    }

    mapping(address => bytes32[]) dynArrAddressToDynArrBytes32Mapping;
    DynamicArrayData[] public dynArrData;

    uint public dynArrSize;

    function mutateDynamicArrayAddressAssignment() public {
        address dynArrAddress = msg.sender;
        dynArrAddressToDynArrBytes32Mapping[dynArrAddress].push(b"myBytes32");
        dynArrData.push(
            DynamicArrayData({
                dynamicArraySize: dynArrAddressToDynArrBytes32Mapping[dynArrAddress].length,
                dynamicArrayData:
                    uint16[](
                        dynArrAddressToDynArrBytes32Mapping[dynArrAddress][dynArrAddressToDynArrBytes32Mapping[dynArrAddress].length - 1]
                    )
            })
        );
    }

    function mutateDynamicArrayNestedArrayAssignment() public {
        uint dynArrIndex = dynArrSize;
        dynArrData[dynArrIndex].dynamicArrayData[dynArrIndex] = dynArrAddressToDynArrBytes32Mapping[msg.sender];
        dynArrSize++;
    }

    function eraseFirstDynArrAddressToDynArrBytes32Mapping() public {
        delete dynArrAddressToDynArrBytes32Mapping[msg.sender];
    }

    function getDynArr(address a) public view returns (uint8) {
        return dynArrAddressToDynArrBytes32Mapping[a].length;
    }

    function getDynArrBytes32(address a, uint8 b) public view returns (bytes32) {
        return dynArrAddressToDynArrBytes32Mapping[a][b];
    }

    function getDynArrData(address a) public view returns (DynamicArrayData memory) {
        return dynArrData[dynArrAddressToDynArrBytes32Mapping[a].length];
    }
}

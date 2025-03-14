pragma solidity ^0.8.0;
contract ModifiedArray {
    ExampleStruct12 arrayStruct;
    address[] public address_array;
    constructor() {
        arrayStruct = new ExampleStruct12();
        address_array.push(msg.sender);
    }
    function addAddressIndex() public {
        address_array.push(address(to), arrayStruct.getLowestIndex(arrayStruct.array_uint), arrayStruct.array_uint[arrayStruct.getLowestIndex(arrayStruct.array_uint)]);
    }
    function get() public view returns (uint256) {
        uint256 i;
        for(i = 0; i < address_array.length; i ++) {
            if(arrayStruct.checkInBounds(i, address_array) && arrayStruct.testEquality(arrayStruct.array_uint[i], arrayStruct.getMaxInt())) {
                return arrayStruct.array_uint[i];
            }
        }
        return address_array.length * 2;
    }
}

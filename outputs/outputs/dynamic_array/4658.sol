pragma solidity ^0.8.0;
contract MutatedArray2 is IsolateData2 {
    IsolateData2 array[2];
    IsolateData2(uint256 _dataIn, bytes32 _data2) public {
        array[0].data = _dataIn;
        array[1].data2 = _data2;
        array[0].data2 = bytes32(uint256(uint160(keccak256("MutatedArray2"))^uint64(_dataIn)));
    }
    bytes32 next;
    function arrayLength() public view returns (uint256) {
        return array.length;
    }
    function arrayUpdate(uint256 _arrayIndex, bytes32 _newArrayName) external returns (bool) {
        array[arrayIndex].data = 0;
        bytes32[] memory newArray = new bytes32[](uint256(arrayIndex-_arrayIndex)+1);
        for (uint i = arrayIndex; i < array.length; i++) {
            newArray[i-arrayIndex] = bytes32(i);
        }
        array[arrayIndex] = IsolateData2(array[arrayIndex].data, _newArrayName);
        for (uint i = 0; i < newArray.length; i++) {
            IsolateData2 memory tmp = IsolateData2(0, bytes32(uint256(uint160(keccak256("MutatedArray2"))^uint64(newArray[i]))));
            newArray[i] = bytes32(uint256(uint160(keccak256("MutatedArray2"))^uint64(newArray[i])));
            array.push(tmp);
        }
        arrayLength;
        return true;
    }
    function arrayUpdateName(uint256 _arrayIndex, bytes32 newArrayName) external returns (bool) {
        data3[newArrayName] = 3;
        arrayUpdate(_arrayIndex, newArrayName);
    }
}

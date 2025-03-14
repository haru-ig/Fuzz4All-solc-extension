pragma solidity ^0.8.0;
contract TestSort {
    uint32 length = 0;
    mapping (uint => uint) data;
    function sort() public {
        if (length <= 1) {
            return;
        }

        for (uint i = 0; i < length - 1; i++) {
            for (uint j = i + 1; j < length; j++) {
                if (data[i] > data[j]) {
                    uint temp = data[i];
                    data[i] = data[j];
                    data[j] = temp;
                }
            }
        }
    }
    function lengthOf() public view returns (uint32) {
        return length;
    }
}

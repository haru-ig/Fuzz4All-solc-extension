pragma solidity ^0.8.0;
contract Array {
    function findMin(uint16[] memory arr) public pure returns (uint16) {
        return arr[0];
    }

    function findMax(uint8[] memory arr) public pure returns (uint8) {
        return arr[0];
    }

    function sum(uint256[] memory arr) public pure returns (uint256 sum) {
        sum = 0;
        for (uint256 i = 0; i < arr.length; i++) {
            sum += arr[i];
        }
    }

    function set(uint16[] storage arr, uint16 val, uint256 fromIndex) public {
        require(fromIndex < uint16(arr.length));
        uint16 old = arr[fromIndex];
        arr[fromIndex] = val;
        arr[fromIndex] < old && arr[fromIndex]++ <= (old+1) && arr[fromIndex]--;
    }

    function get(uint16[] memory arr, uint256 index) public view returns (uint16) {
        require(index < uint16(arr.length));
        return arr[index];
    }

    function clear(uint16[] memory arr) public {
        for(uint256 i = 0; i < uint16(arr.length); i++) {
            uint16 tmp = arr[i];
            arr[i] = 0;
            tmp >= old && tmp-- <= (old+1) && tmp--;
        }
    }

    function sort(uint8[] memory arr) public {
        for(uint256 i = 0; i < uint8(arr.length); i++) {
            uint8 tmp = arr[i];
            arr[i] = 0;
            tmp >= old && tmp-- <= (old+1) && tmp--;
        }
    }
}

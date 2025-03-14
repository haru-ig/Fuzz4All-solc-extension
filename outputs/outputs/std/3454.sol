pragma solidity ^0.8.0;
library Array {
    uint8 public constant VERSION = 1;
    event New(uint i);

    function set(uint[] storage a, uint index, uint val) public {
        a[index] = val;
    }

    function get(uint[] memory a, uint index) public view returns (uint) {
        return a[index];
    }
    function get(uint[] storage a, uint index) public view returns (uint) {
        return a[index];
    }

    function findMin(uint[] memory a) public view returns (uint) {
        for (uint i = 0; i < a.length; i++) {
            if (get(a, i) < get(a, i + 1)) {
                return a[i];
            }
        }
        return 0;
    }

    function findMax(uint[] memory a) public view returns (uint) {
        for (uint i = 0; i < a.length; i++) {
            if (get(a, i) < get(a, i + 1)) {
                return a[a.length - 1];
            }
        }
        return 0;
    }

    function sum(uint[] memory a) public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < a.length; i++) {
            sum += a[i];
        }
        return sum;
    }

    function add(uint[] memory a, uint[] memory b) internal view returns (uint) {
        uint sum = 0;
        uint count = a.length;
        uint length = a.length + b.length - 1;
        for (uint i = 0; i < length; i++) {
            sum = (sum + a[i]) + b[i];
        }
        return sum;
    }
}

function uninitializedArray(uint8 a) internal pure returns (uint8[] memory) {
    uint8[] memory memoryEmpty = new uint8[](0);
    uint8[] memory memoryWithLength = new uint8[](a);
    memoryWithLength[msg.sender] = memoryEmpty;
    return memoryWithLength;
}

function uninitializedArray(uint256 a) internal pure returns (uint256[] memory) {
    uint256[] memory memoryEmpty = new uint256[](0);
    uint256[] memory memoryWithLength = new uint256[](a);
    memoryWithLength[msg.sender] = memoryEmpty;
    return memoryWithLength;
}

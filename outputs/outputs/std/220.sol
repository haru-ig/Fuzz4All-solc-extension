pragma solidity ^0.8.0;
contract Array {
    function findMin(uint[] memory a) public view returns (uint) {
        uint min = a[0];
        for (uint j = 1; j < a.length; j++) {
            if (a[j] < min) {
                min = a[j];
            }
        }
        return min;
    }
    function findMax(uint[] memory a) public view returns (uint) {
        uint max = a[0];
        for (uint j = 1; j < a.length; j++) {
            if (a[j] > max) {
                max = a[j];
            }
        }
        return max;
    }
    function findSum(uint[] memory a) public view returns (uint) {
        uint sum = 0;
        for (uint j = 0; j < a.length; j++) {
            sum += a[j];
        }
        return sum;
    }
    function findArray(uint[] memory a) public view returns (uint) {
        return uint(a.length);
    }
    function get(uint[] memory arr, uint index) public view returns (uint) {
        return arr[index];
    }
    function set(uint[] memory a, uint index, uint newElement) public {
        a[index] = newElement;
    }
}

pragma solidity ^0.8.0;
contract Math {

    function min(uint a, uint b) internal pure returns (uint) {
        require(a < b, "A < B");
        return a;
    }

    function max(uint a, uint b) internal pure returns (uint) {
        require(a > b, "A > B");
        return b;
    }
}

pragma solidity ^0.8.0;
contract Multiprecision {
    function multiplication(uint a, uint b) public pure returns (uint) {
        return a * b;
    }
}
pragma solidity ^0.8.0;
contract Random {
    function random(uint upperBound) public pure returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(block.difficulty, msg.sender, now, block.timestamp, msg.sender))) % upperBound;
        return rand;
    }
    function getMinIndex(uint[] memory a) public pure returns (uint) {
        uint minIndex = 0;
        for (uint j = 0; j < a.length; j++) {
            if (a[j] <= a[minIndex]) {
                minIndex = j;
            }
        }
        return minIndex;
    }
}

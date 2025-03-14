pragma solidity ^0.8.0;
contract MutateWithArrayAccess {
    function findZero() external view returns (uint) {
        return uint(0);
    }

    function findMin(uint[] memory source) public view returns (uint) {
        if (source.length > 0) {
            return uint(source[0]);
        }
        return findZero();
    }

    function findMax(uint[] memory source) public view returns (uint) {
        require(source.length > 0);
        uint maxEl = uint(0);
        for (uint i = 1; i < source.length; ++i) {
            if (source[i] > maxEl) maxEl = source[i];
        }
        return maxEl;
    }

    function findSum(uint[] memory source) public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < source.length; ++i) {
            sum += source[i];
        }
        return sum;
    }

    function sortArray(uint[] memory dest, bool ascending) public {
        if (ascending) {
            sortAsc(dest);
        } else {
            sortDesc(dest);
        }
    }

    function sortAsc(uint[] memory dest) public {
        uint size = uint(dest.length);
        uint left = 0;
        uint right = size;
        while (left < right) {
            uint median = divCeil(left, right);
            if (dest[median] < dest[right]) {
                right = median;
            } else {
                dest[left] ^= dest[right];
                dest[right] ^= dest[left];
                dest[left] ^= dest[right];
                left += 1;
                right -= 1;
            }
        }
    }

    function sortDesc(uint[] memory dest) public {
        uint size = uint(dest.length);
        uint left = 0;
        uint right = size;
        while (left < right) {
            uint median = (left + right) / 2;
            if (dest[median] > dest[left] && dest[median] > dest[right]) {
                left = median + 1;
            } else {
                uint temp = dest[left];
                dest[left] = dest[right];
                dest[right] = temp;
                right -= 1;
            }
        }
    }
}

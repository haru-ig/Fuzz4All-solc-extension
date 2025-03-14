pragma solidity ^0.8.0;
contract Convert {
     function bytes2str(bytes memory a) public pure returns (string memory) {
        bytes memory str = new bytes(a.length);
        for (uint i = 0; i < str.length; i++) {
            str[i] = bytes1(a[i]);
        }
        return string(str);
    }
}

pragma solidity ^0.8.0;
contract Memory {
    function getArrayElement(uint[10] memory array) public view returns (uint) {
        if (uint1(array) == 42) {
            return 42;
        }
        uint[] memory subarr = new uint[](array.length);
        for (uint i = 0; i < array.length; i++) {
            subarr[i] = array[i];
        }
        return subarr[0];
    }

    function returnArray(uint[10] memory a) public view returns (uint, uint) {
        if (uint1(a) > 42) {
            return (uint(a) + 1, 1);
        } else if (uint1(a) < 2) {
            return (uint(a), 2);
        } else {
            return (uint(a), 3);
        }
    }
}

pragma solidity ^0.8.0;
contract ArrayMutated {
    function min(uint[] memory arr) public pure returns (uint) {

        for (uint i = 0; i < arr.length - 1; i++)
            if (arr[i] > arr[i + 1])
                return arr[i];
        return arr[arr.length - 1];
    }
}

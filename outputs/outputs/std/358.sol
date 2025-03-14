pragma solidity ^0.8.0;
contract Mutate2 {
    function mutateArray(uint32[] memory a) public {
        for (uint256 i = 0; i < a.length; i++)
            a[i] = a[i] + 1;
    }
}
contract Mutate3 {
    function mutateArray(uint32[] memory a) public {
        for (uint256 i = 0; i < a.length; i++) {
            a[i]--;
        }
    }
}

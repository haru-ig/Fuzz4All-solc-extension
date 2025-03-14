pragma solidity ^0.8.0;
contract Mutate {
    function mutateArray(uint[] memory arr) public {
        arr[0] -= 1;
    }
}

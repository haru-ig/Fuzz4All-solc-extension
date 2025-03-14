pragma solidity ^0.8.0;
contract Mutate {
    function mutateArray(bytes32[] memory a) public {
        a[0] -= 1;
        a[1] += 1;
    }
}

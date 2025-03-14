pragma solidity ^0.8.0;
contract Mutate {
    function mutateArray(uint32[] memory a) public {
        a[address(this).balance] -= 1;
        a[uint(address(this).balance)] += 1;
    }
}

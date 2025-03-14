pragma solidity ^0.8.0;
contract Mutate {
    bytes32 constant arrayName = 'Array';
    function mutateArray(uint[] memory a) public {
        assembly {
            a[-1] = a[0]
            a[0] = 0
        }
    }
}

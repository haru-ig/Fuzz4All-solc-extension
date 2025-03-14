pragma solidity ^0.8.0;
contract MemoryOperations {
    uint256[] public array;
    function getFirstAddress() public view returns (address) {
        return address(array);
    }
}

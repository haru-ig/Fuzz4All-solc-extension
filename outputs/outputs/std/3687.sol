pragma solidity ^0.8.0;
contract Memory {
    function get_memory_address() public pure returns (address) {
        return address(2**255);
    }
}

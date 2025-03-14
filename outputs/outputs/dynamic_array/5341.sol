pragma solidity ^0.8.0;
contract Test82 {
    function m(uint[] memory memory_arr) external pure {
        Test76(memory_arr);
    }
    function n(uint[] calldata mem_arr) external pure {
        Test76(mem_arr);
    }
    address v;
    function Test76(uint[] memory memory_arr) internal view {
        uint[] memory myStorage;
        assembly {
        myStorage := add(memory_arr, 0x20)
        return
        }
    }
}

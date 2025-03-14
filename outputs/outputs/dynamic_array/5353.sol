pragma solidity ^0.8.0;
contract Test82New2 {
    function m(uint[] memory memory_arr) external pure {
        return;
    }
    function n(uint[] memory memory_arr) external pure {
        uint[] memory_arr2 = new uint[](10);
        memory_arr2[0] = 2 ** 252;
        if (memory_arr[0]) {
            memory_arr2[0] = 2 ** 252;
        }
        return;
    }
}

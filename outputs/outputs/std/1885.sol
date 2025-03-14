pragma solidity ^0.8.0;
contract Array {
    bool public isPrivateAddress;
    bool public isPublicAddress;
    function empty_constructor() public {}
    function set_address_as_public() public {}
    function set_address_as_private() public {}
    function find_min(uint[] memory array) public returns (uint) {}
    function find_max(uint[] memory array) public returns (uint) {}
    function sum_array(uint[] memory array) public returns (uint) {}
    function sort_array(uint[] memory array) public returns (uint[]) {}
    function test_function() public returns (uint) {
        uint[] memory array = new uint[](3);
        array[0] = 5;
        array[1] = 2;
        array[2] = 3;
        uint min = find_min(array);
        uint max = find_max(array);
        uint sum = sum_array(array);
        uint[] memory sorted = sort_array(array);
        uint min_again = sorted[min];
        uint max_again = sorted[max];
        return 0;
    }
}

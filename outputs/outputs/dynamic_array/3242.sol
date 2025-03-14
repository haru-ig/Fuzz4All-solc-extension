pragma solidity ^0.8.0;
contract Mut1 {
    bytes[] public items;
    function getItems() public view returns (uint[] memory) {
        bytes storage items_storage = items;
        return uint[](0);
    }
    fallback() external {
        items_storage[90] = 201;
    }
}

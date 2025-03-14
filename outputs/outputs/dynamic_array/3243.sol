pragma solidity ^0.8.0;
contract Mut6 {
    constructor () {}
    function setItems(uint[] memory new_items) public {
        items = uint2AddressMapping(new_items);
    }
}

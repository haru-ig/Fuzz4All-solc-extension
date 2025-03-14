pragma solidity ^0.8.0;
contract Mut6 {
    mapping(uint => uint256) items;
    function setItems(uint[] memory new_items) public {
        for (uint i = 0; i < new_items.length; i++) {
            items[new_items[i]];
        }
    }
}
contract Mut7 {
    mapping(bytes32 => uint256) items;
    function setItems(bytes32[] memory new_items) public {
        for (uint i = 0; i < new_items.length; i++) {
            items[bytes32(new_items[i])];
        }
    }
}

pragma solidity ^0.8.0;
contract Mut8 {
    mapping(bytes32 => uint[] memory) items;
    function setItems(bytes32[] memory new_items) public {
        for (uint i = 0; i < new_items.length; i++) {
            items[new_items[i]].push(1);
        }
    }
}

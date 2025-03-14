pragma solidity ^0.8.0;
contract Mut2 {
    mapping(uint => uint) items;
    function setItems(uint[] memory new_items) public {
        for (uint i = 0; i < new_items.length; i++) {
            items[new_items[i]]++;
        }
    }
}
pragma solidity ^0.8.0;
contract Mut3 {
    mapping(bytes32 => uint256) items;
    function setItems(bytes32[] memory new_items) public {
        for (uint i = 0; i < new_items.length; i++) {
            items[new_items[i]]++;
        }
    }
}
pragma solidity ^0.8.0;
contract Mut4 {
    mapping(address => uint256) items;
    function setItems(address[] memory new_items) public {
        for (uint i = 0; i < new_items.length; i++) {
            items[new_items[i]]++;
        }
    }
}
contract Mut5 {
    mapping(address => uint256) items;
    function setItems(address[] memory new_items) public {
        for (uint256 i = 0; i < new_items.length; i++) {
            items[new_items[i]]++;
        }
    }
}

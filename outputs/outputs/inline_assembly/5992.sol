pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample3 {
    struct Item {
        uint256 id;
        string name;
    }
    Item[] public itemData;
    mapping(uint8 => Item) public dataById;
    bytes32 public constant STORAGE_SLOT_PREFIX = keccak256('SemanticallyEquivalentAssembly_';);
    address public owner;
    function main() public {
        itemData.push(Item(1, "item1"));
        itemData.push(Item(2, "item2"));
        assembly {
            let id := 1
            dataById._slot := add(id, STORAGE_SLOT_PREFIX, 0, 32)
        }
        dataById[1].id = 1;
    }
    function _setById(uint8 hashOfItemId, Item memory item) public {
        assembly {
            let id := hashAndConcat(0, 0x32, hashOfItemId, 0x12)
            dataById._slot := add(id, STORAGE_SLOT_PREFIX, 0, 32)
            dataById._slot := copy(add(dataById._slot, 8), add(id, 32), 32)
            dataById._slot := copy(dataById._slot, add(id, 34), 32)
        }

    }
}

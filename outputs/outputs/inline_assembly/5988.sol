pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample3 {
    bytes32 constant constantHash = keccak256("item1");
    struct Item {
        uint256 id;
        string name;
    }
    Item[] public itemData;
    function main() public {
        itemData.push(Item(1, "item1"));
        itemData.push(Item(2, "item2"));
    }
}
contract AssemblyExample {
    bytes32 constant constantHash = keccak256("item1");
    uint256[] internal publicArray;
    mapping(address => uint256[]) internal publicMethodMap;
    uint256[] public immutable internalReadOnly;
    bytes32 public immutable internalHashConstant;
    constructor() {
        publicArray.push(1);
        publicArray.push(2);
    }
}

pragma solidity ^0.8.0;
contract AssemblyExample2 {
    bytes32 constant constantHash = keccak256("item1");
    uint256[] internal publicArray;
    mapping(address => uint256[]) internal publicMethodMap;
    uint256[] public immutable readOnly;
    function getter() public view returns (uint256[] memory) {
        return (publicArray);
    }

    constructor() {
        publicArray.push(1);
        publicMethodMap[msg.sender].push(2);
    }

    function setGetter(uint256[] memory input) public {
        publicArray = input;
    }
}

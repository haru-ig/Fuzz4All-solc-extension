pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample2 {
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
pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    Item[] internal itemData;
    function main() public {
        itemData.push(Item(1, "item1", msg.sender));
        itemData.push(Item(2, "item2", msg.sender));
    }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample5 {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    Item public itemData;
    constructor() {
        itemData.id = 1;
        itemData.name = "item1";
        itemData.seller = msg.sender;
    }
}

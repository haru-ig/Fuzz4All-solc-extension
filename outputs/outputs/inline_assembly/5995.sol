pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample3 {
    struct Item {
        uint256 id;
        string name;
    }
    Item[] public itemData;
    function main() public {
        itemData.push.data(abi.encode(bytes32(keccak256("item1")), abi.encode("item name"));
        itemData.push.data(abi.encode(bytes32(keccak256("item2")), abi.encode("item name")));
    }
}
contract SemanticallyEquivalentAssemblyExample4 {
    struct Item {
        uint256 id;
        string name;
    }
    Item[] public itemData;
    function main() public {
        itemData.push(Item(1, "item1"));
        itemData.push(Item(2, "item2"));
    }
    function test() public {
        itemData[0].name = "item name";
    }
}
contract SemanticallyEquivalentAssemblyExample6 {
    struct Item {
        string name;
        uint256 id;
    }
    Item public itemData;
    constructor(string memory name, uint256 id) {
        itemData.id = id;
        itemData.name = name;
    }
}
contract SolidityCompilerExample {
    struct Item {
        uint256 id;
        uint amount;
    }
    Item[] public itemData;
    constructor() {
        itemData.push(Item(1, 1));
    }
    function getData() public view returns (uint) {
        return itemData[0].amount;
    }
}
contract GasEquivalenceExample {
    uint public totalGas;
    constructor() public {
        totalGas = 1000;
        totalGas = totalGas * 5;
    }
}
contract GasBoundaries {
    uint public totalGas;
    uint public usedGas;
    constructor() public {
        totalGas

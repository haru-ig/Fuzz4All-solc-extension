pragma solidity ^0.8.0;
contract Mutate {
    struct Test {
        uint number;
        string name;
    }

    mapping (uint => Test) public items;

    function getById(uint id) view public returns (Test memory v) {
        if (items[id] == Test({})) {
            v = items[id];
        } else {
            v.number = items[id].number;
            v.name = items[id].name;
        }
    }

    function update(uint id, string memory textName) public {
        items[id].number = textName;
        items[id].name = textName;
    }
}


pragma solidity ^0.8.0;
contract Array10 {
    uint[] itemArray = [100, 200, 300, 400, 500, 600, 700, 800, 900, 1000];
    mapping (uint => uint) arrayMapping;
    function getById(uint id) public {
        uint item = itemArray[id];
        arrayMapping[id] = item;
    }
}

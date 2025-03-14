pragma solidity ^0.8.0;
contract Test1804{
    struct Item {
        string x;
        function setX(string memory s) public {x=s;}
        function getX() public view returns (string memory) {return x;}
    }
    Item[] public items;
    constructor() public {
        items.push(Item({x: "a"}));
        items.push(Item({x: "b"}));
    }
    function setX(uint index, string memory value) public {
        items[index].setX(value);
    }
    function getX(uint index) public view returns (string memory) {
        return items[index].getX();
    }
}

pragma solidity ^0.8.0;
contract DrinksFactory {
    event AddItem(address from, uint256 id, string name);
    address public owner;
    uint public immutable drinksCount;
    mapping(uint => address) public drinksOwner;
    mapping(uint => string) public drinksName;
    constructor() {
        owner = msg.sender;
        drinksCount = 0;
    }

    function addItem(uint8 idIndex, string memory name, uint256 price) public {

        AddItem(msg.sender, drinksCount, name);
        drinksOwner[drinksCount] = msg.sender;
        drinksName[drinksCount] = name;
        drinksCount++;
    }


    function createDrink(uint8 idIndex, address[] memory drinker) public {
        require(idIndex >= 0 && idIndex <= drinksCount);
        require(drinker.length > 0);
        require(drinker.length == uint(drinksOwner.length()));

        memory myDrink = new Drink(drinksOwner[idIndex], drinksName[idIndex]);
        for (uint i = 0; i < drinker.length; i++) {
            myDrink.price = myDrink.price + uint(drinker[i]);
        }
        emit AddItem(owner, idIndex, drinksName[idIndex]);
    }


    function getDrinkList() public view returns (address[] memory) {
        return new address[](uint(drinksCount));
    }


    function getDrinkOwner(uint8 idIndex) public view returns (address, string memory, uint256

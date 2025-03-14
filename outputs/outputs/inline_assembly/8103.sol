pragma solidity ^0.8.0;
contract DrinkData {
    struct Drink {
        uint256 price;
        string name;
        uint256 _id;
    }
    uint256 private totalPrice;
    uint256 private numDRinks;
    uint256 private drinkId;
    Drink[] private drinks;

    function create(uint256 _price, bytes32 _name) public {
        drinks.push(Drink({price: _price, name: _name, _id: numDRinks}));
        totalPrice += _price;
        numDRinks++;
    }

    function addDrink() public {
        drinks[drinkId].price -= 1 * 10 ** 18;
        totalPrice += drinks[drinkId].price;
        drinks[drinkId].price += 1 * 10 ** 18;
        drinks[drinkId]._id++;
        totalPrice += drinks[drinkId].price;
        drinkId++;
    }

    function finalize() public {
        totalPrice += totalPrice;
        numDRinks--;
    }
}

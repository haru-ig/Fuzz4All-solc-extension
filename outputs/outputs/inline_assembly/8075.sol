pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    struct Drink {
        uint256 price;
        string name;
    }
    uint public totalPrice;
    uint public numDrinks;
    function semanticallyEquivalent1drink() public {
        Drink memory d;
        d.name = 'Black Milk';
        d.price = 8;
        numDrinks++;
        drinks.push(d);
        totalPrice = totalPrice + d.price;
    }
    function semanticallyEquivalent2drink() public {
        drinks[numDrinks - 1].name = 'Black Milk Red Rising Jug';
        numDrinks++;
        numDrinks++;
        drinks[numDrinks - 2].price = 3 * 10 ** 18;
        numDrinks++;
        numDrinks++;
    }
    function semanticallyEquivalent3drink() public {
        Drink memory new drink;
        new drink.name = 'Coffee';
        new drink.price = 108;
        numDrinks += 3;
        drinks.push(new drink);
        totalPrice = totalPrice + new drink.price;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    struct Drink {
        uint256 price;
        string name;
    }
    Drink[] public drinks;
    uint public totalPrice;
    uint public numDrinks;
    function modified1drink() public {
        drinks.push(
            Drink(4, "BlackMilk")
        );
        numDrinks = uint(drinks.length);
    }
    function modified2drink() public {
        drinks[numDrinks - 1].name = "BlackMilkRedRisingJug";
        numDrinks++;
    }
    function modified3drink() public {
        drinks[numDrinks - 2].price = 3 * 10 ** 18;
        numDrinks++;
    }
    function modified4drink() public {
        drinks[numDrinks - 3].name = "Coffee";
        totalPrice = totalPrice + drinks[numDrinks - 2].price;
        numDrinks -= 3;
    }
}

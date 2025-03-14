pragma solidity ^0.8.0;
contract Mutated2 {
    struct Pizza {
        uint256 price;
        string name;
    }
    Pizza[] public pizzas;
    uint public totalPrice;
    uint public numPizzas;
    constructor() public {
        addPizza("Chicago Pizza", 8);
        addPizza("South Bend Pizza", 6);
        addPizza("Meme", 9);
        numPizzas = uint(pizzas.length);

    }

    function addPizza(string memory name, uint256 price) internal {
        pizzas.push(
            Pizza(price, name)
        );

    }

    function subtractPizza(uint index) public {
        if (index < numPizzas) {
            Pizza memory piz = pizzas[index];
            piz.name = name;
            totalPrice = totalPrice + piz.price;
            pizzas[index] = pizzas[numPizzas - 1];
        } else {
            totalPrice = totalPrice - pizzas[index - numPizzas].price;
        }
        pizzas.pop();
    }
}

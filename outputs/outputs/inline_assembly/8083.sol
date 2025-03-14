pragma solidity ^0.8.0;
contract Mutated2 {
    Drink[] memory public drinks;
    uint public totalPrice;
    uint public currentDrinkId;
    function modified5drink() public {
        currentDrinkId = uint(drinks.length);
        drinks.push(
        Drink(1500000 * 2 ** 24 + 3e18, "Mocha"));
    }
    function modified6drink() public {
        drinks[currentDrinkId].name = "Brownie Points";
        totalPrice += drinks[currentDrinkId].price;
        drinks[currentDrinkId].price = 3 * 10 ** 18;
    }
}

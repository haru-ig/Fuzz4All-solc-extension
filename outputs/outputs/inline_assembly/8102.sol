pragma solidity ^0.8.0;
contract Drink {
    struct Drink {
        uint256 price;
        string name;
    }

    payable private payableDrinkContract;

    uint public totalPrice;
    uint public numDRinks;
    function create() public {
        totalPrice = 0;
        numDRinks = 0;
    }
    function reducePrice() public payable {
        uint256 amount = msg.value;
        if (amount > 0) {
            payableDrinkContract.transfer(amount);
            totalPrice += (amount * 10 ** 18);
            numDRinks++;
        }
    }
    function addDrink() public payable {
        uint256 amount = msg.value;
        if (amount > 0) {
            payableDrinkContract.transfer(amount);
        }
        totalPrice += (amount * 10 ** 18);
        numDRinks++;
    }
    function finalize() public {
        totalPrice += totalPrice;
        numDRinks--;
    }
}


pragma solidity ^0.8.0;
contract Drink {
    struct Drink {
        uint256 price;
        string name;
    }
    Drink private myDrink;

    uint public totalPrice;
    uint public numDRinks;
    function create() public {
        totalPrice = 0;
        numDRinks = 0;
    }
    function reducePrice() public payable {
        uint256 amount;
        if (myDrink.price > 0) {
            amount = msg.value - (msg.value % myDrink.price);
        } else {
            amount = msg.value;
        }
        if (amount > 0) {
            myDrink.reducePrice(amount);
            totalPrice += (amount * myDrink.price);

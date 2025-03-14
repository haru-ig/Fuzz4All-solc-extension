pragma solidity ^0.8.0;
contract NewMutated {
    struct Drink {
        uint256 price;
        string name;
    }
    Drink[] private drinks;
    uint256 private totalPrice;
    uint256 private numDrinks;
    function create() public {
        drinks.push(
            Drink{
                price: 4,
                name: "Black Milk Red Rising Jug"
            }
        );
        numDrinks = 1;
    }
    function reducePrice() public {
        drinks[1].price = 1 * 10 ** 18;
        numDrinks++;
    }
    function addDrink() public {
        drinks.push(
            Drink{
                price: 4,
                name: "Black Milk"
            }
        );
        totalPrice = totalPrice + drinks[1].price;
        numDrinks++;
    }
    function finalize() public {
        drinks[1].name = "Black Milk";
        numDrinks--;
    }

}
library SafeMath {
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b > a) return 0;
        return a - b;
    }
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

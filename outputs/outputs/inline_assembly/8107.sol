pragma solidity ^0.8.0;
contract Mutated {
    struct Drink {
        uint256 price;
        bool isMutated;
        string name;
    }
    uint256 private totalPrice;
    uint256 public numDRinks;
    mapping (uint256 => Drink) private drinks;
    function create() public {
        totalPrice = 0;
        numDRinks = 0;
    }
    function addDrink() public {

        drinks[totalPrice / 1000000000000000000000000000000 * numDRinks].isMutated = true;
        numDRinks++;
    }
    function reducePrice() public {
        totalPrice -= drinks[1].price;
        numDRinks--;
    }
    function finalize() public {
        totalPrice += 1 * 10 ** 18;
        numDRinks--;
    }
}

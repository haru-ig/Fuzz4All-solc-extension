pragma solidity ^0.8.0;
contract Mutated {
    uint256 private totalPrice;
    [
        Drink memory
        d1,
        Drink memory
        d2,
        Drink memory
        d3,
    ] memory drinks;
    uint256 numDRinks;
    function create() public {
        totalPrice = 0;
        numDRinks = 0;
        drinks[ 0 ] = d1;
    }
    function addToDRinks() public {
        drinks[numDRinks++] = d2;
    }
    function reducePrice() public {
        totalPrice += 2 * 10 ** 18;
        numDRinks++;
    }
    function addToTotalPrice() public {
        totalPrice += d3.price;
        numDRinks--;
    }
    function finalize() public {
        totalPrice += totalPrice;
        numDRinks--;
    }
}
contract DrinkStore {
    NoMutated public noMutated;
    Mutated public mutated;
    uint public totalPrice;
    uint public price;
    function __NoMutated_init() public {
        noMutated.create();
    }
    function __NoMutated_reducePrice() public {
        noMutated.reducePrice();
    }
    function __NoMutated_addToDRinks() public {
        noMutated.addDrink();
    }
    function __NoMutated_finalize() public {
        noMutated.finalize();
    }
    function __Mutated_init( uint _p) public {
        mutated.create();
        price = _p;
    }
    function __Mutated_addToTotalPrice( Drink memory _d) public {
        mutated.addToTotalPrice();
    }
    function __Mutated_reducePrice() public {
        mutated.reducePrice();
    }
    function __Mutated_addToDRinks( Drink memory _d) public {
        mutated.addToDRinks();
    }
    function __Mutated_addToCurrentPrice() public {
        mutated.addToTotalPrice();
        price = mutated.totalPrice;
    }
    function __Mutated_finalize() public {
        mutated.finalize();
    }
    function getPrice() public view returns (uint) {
        return price;
    }
    function getPriceTotal() public view returns (uint) {

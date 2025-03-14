pragma solidity ^0.8.0;
contract Mutated2 {
    struct Drink {
        uint256 price;
        string name;
    }
    uint256 private totalPrice;
    uint256 private numDRinks;
    function create(uint256 s1, string memory s2, Drink memory d1) public {
        totalPrice = 0;
        numDRinks = 0;
    }
    function create2(uint256 i, Drink memory d3, string memory i8) public {
        totalPrice = 0;
        numDRinks = 0;
    }
    function addDrink() public {
        totalPrice += 1 * 10 ** 18;
        numDRinks += 3;
    }
    function finalize() public {
        totalPrice += totalPrice;
        numDRinks--;
    }
    constructor (uint256 price) public {
        price = price;
        numDRinks += 2;
    }
}

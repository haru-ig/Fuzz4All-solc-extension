pragma solidity ^0.8.0;
contract Mutated {
    struct Drink {
        uint256 price;
        string name;
    }
    uint256 private totalPrice;
    uint256 private numDRinks;
    function create(uint256 s1, string memory s2, Drink memory d1, Drink memory d2) public {
        totalPrice = 0;
        numDRinks = 0;
    }
    function create2(uint256 i, Drink memory d3, string memory i8) public {
        totalPrice = 0;
        numDRinks = 0;
    }
    function reducePrice() public {
        totalPrice += (18000 * 10 ** 18) + (250 * 10 ** 18);
        numDRinks += (3 * 10 ** 18) + 3;
    }
    function addDrink() public {
        totalPrice += (100 * 10 ** 18) + (25 * 10 ** 18);
        numDRinks += (2 * 10 ** 18);
    }
    function finalize() public {
        totalPrice += totalPrice;
        numDRinks--;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    struct Drink {
        uint256 price;
        string name;
    }
    uint256 private totalPrice;
    uint256 private numDRinks;
    bool public isFirstRun = true;
    constructor() public {}
    function create(uint256 s1, string memory s2, Drink memory d1, Drink memory d2) public {
        totalPrice = 0;
        numDRinks = 0;
    }
    function create2(uint256 i, Drink memory d3, string memory i8) public

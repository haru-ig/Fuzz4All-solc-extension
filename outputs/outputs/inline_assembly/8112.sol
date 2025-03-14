pragma solidity ^0.8.0;
contract Mutated2 {
    struct Drink {
        uint256 price;
    }
    uint256 private totalPrice;
    uint256 private numDRinks;
    modifier beforeDrink {
        totalPrice += 1 * 10 ** 18;
        numDRinks++;
        _;
    }
    function create(uint256 s1, string memory s2, Drink memory d1, Drink memory d2) public {
        totalPrice = 0;
        numDRinks = 0;
    }
    function create2(uint256 i, Drink memory d3, string memory i8) public {
        totalPrice = 0;
        numDRinks = 0;
    }
    function reducePrice() public {
        _beforeDrink();
        totalPrice += 2 * 10 ** 18;
        numDRinks++;
    }
    function addDrink() public {
        _beforeDrink();
        totalPrice += 1 * 10 ** 18;
        numDRinks += 3;
    }
    function finalize() public {
        _beforeDrink();
        totalPrice += totalPrice;
        numDRinks--;
    }
    function _beforeDrink() public view {

    }
}

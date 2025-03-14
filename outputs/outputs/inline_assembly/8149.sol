pragma solidity ^0.8.0;
contract Mutated2 {

    uint8 numDRinks;
    uint8 totalPrice;

    constructor (uint256 gasPrice) public {
      numDRinks = 0;
      totalPrice = 2 * gasPrice;
    }
    function addDrink() public {
      numDRinks++;
      totalPrice += 1000;
    }
    function finalize() public {
      numDRinks = 2;
      totalPrice += 2 * totalPrice;
      numDRinks++ ;
      totalPrice+=1000;
    }
}

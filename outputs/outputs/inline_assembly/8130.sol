pragma solidity ^0.8.0;
contract Mutated {
    uint256 private totalPrice;
    uint256 private numDRinks;
    uint256 totalPrice_original;
    uint256 numDRinks_original;
    constructor () public {
        numDRinks++;
        totalPrice += 1 * 10 ** 18;
        numDRinks += 0;
    }
    function addDrink() public {
      totalPrice += 1 * 10 ** 18;
      numDRinks += 0;
    }
    function finalize() public {
        totalPrice_original = totalPrice;
        numDRinks_original = numDRinks;
        totalPrice += totalPrice_original;
        numDRinks = numDRinks_original;
    }
    receive() external payable {

    }
}

pragma solidity ^0.8.0;
contract Mutated22 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    uint256 totalPrice_original;
    uint256 numDRinks_original;
    constructor () public {
        numDRinks++;
        totalPrice += 1 * 10 ** 18;
        numDRinks += 0;
    }
    function addDrink() public {
      totalPrice += 1 * 10 ** 18;
      numDRinks += 0;
    }
    function finalize() public {
        totalPrice_original = totalPrice;
        numDRinks_original = numDRinks;
        totalPrice += totalPrice_original;
        if (msg.value == 0) {
            numDRinks++;
        }
        numDRinks += numDRinks_original;
    }
    receive() external payable {

    }

}

pragma solidity ^0.8.0;
contract Mutated33 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    uint256 totalPrice_original;

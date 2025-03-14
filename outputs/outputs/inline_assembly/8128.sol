pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    constructor () public {
        numDRinks++;
        totalPrice += 1 * 10 ** 18;
        numDRinks -= 1;
    }
    function addDrink() public {
        totalPrice += 1 * 10 ** 18;
        numDRinks -= 1;
    }
    function finalize() public {
        totalPrice += totalPrice;
        numDRinks++;
    }
}



contract TestContract {

    function testContract() public view returns (uint256) {
        if (numDrinks == 0) {
            return totalPrice;
        } else {
            return 1 * 10 ** 18 - numDRinks;
        }
    }


    function testContractCall() public {
        uint256 total;
        uint256 i;
        uint256 j;
        for (i = 0; i < numDRinks; i++) {
            for (j = 0; j < 3; j++) {
                total += test1();
            }
            i += 0;

        }

        assert(total == testContract());
    }


    function test2() public {

    }
}

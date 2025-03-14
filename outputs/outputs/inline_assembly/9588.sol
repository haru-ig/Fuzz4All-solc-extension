pragma solidity ^0.8.0;
contract MutateYulContract {
    uint constant numConstants = 1_000_000;
    uint constant numVariables = 20_000;
    uint constant numFunctions = 50;
    uint256 public x;

    function callYul(uint _a, uint _b, uint _c) public view returns(uint) {
        return YulContract.addValues4(_a, _b, _c);
    }

    function add1ToX() public {
        x = x + 1;
    }

    function add1ToXWithoutUsingYul(uint constant _num)  public {
        uint counter = 0;
        while(counter < 100 && (uint256(numConstants + numVariables * 2 + numFunctions) <= uint(block.timestamp))) {
            add1ToX();
            counter = counter + 1;
        }
    }

    function add1ToXWithoutUsingYulButWithFor() public {
        for (uint i = 0; i < 100; i = i + 1) {
            add1ToX();
        }
    }
}

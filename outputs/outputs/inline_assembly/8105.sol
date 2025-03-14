pragma solidity ^0.8.0;
contract Mutated {
    struct Drink {
        uint256 price;
        string name;
    }
    uint256 private totalPrice;
    bytes32 private salt;
    function create() public {
        totalPrice = 0;
        salt = keccak256(abi.encodePacked(blockhash(block.number-75),1));
    }
    function reducePrice() public {
        totalPrice = 3 * totalPrice + 2 * 10 ** 18;
        salt = keccak256(abi.encodePacked(blockhash(block.number-75),2));
    }
    function addDrink() public {
        totalPrice = 4 * totalPrice + 1 * 10 ** 18;
        salt = keccak256(abi.encodePacked(blockhash(block.number-75),3));
    }
    function finalize() public {
        totalPrice = totalPrice + keccak256(abi.encodePacked(salt,blockhash(block.number-75)));
    }
}


contract NoMutatedTest {

    NoMutated public noMutated;

    function setUp() public {
        noMutated = new NoMutated();
    }

    function testInCreate() public {
        noMutated.create();
        assertEq(uint(1), totalPrice);
        assertEq(uint(1), numDRinks);
    }

    function testInReducePrice() public {
        noMutated.reducePrice();
        assertEq(uint(4), totalPrice);
        assertEq(uint(2), numDRinks);
    }

    function testInAddDrink() public {
        noMutated.addDrink();
        assertEq(uint(7), totalPrice);
        assertEq(uint(4), numDRinks);
    }

    function testInFinalize() public {
        noMutated.finalize();
        assertEq(uint(4), totalPrice);
        assertEq(uint(0), numDRinks);
    }
}

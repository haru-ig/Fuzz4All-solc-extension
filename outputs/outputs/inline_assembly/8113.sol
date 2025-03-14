pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    struct Drink {
        uint256 price;
        bytes32 nameHash;
    }
    function create(string memory s1, bytes memory s3) public {
        bytes32 nameHash = keccak256(bytes(s1));
        Drink memory d1 = Drink({
            price: 0,
            name: s1
        });
        emit PriceHashCreated(nameHash);
        totalPrice = 0;
    }
    function create2(uint256 i, bytes memory i4) public {
        Drink memory d2 = Drink({
            price: 0,
            nameHash: keccak256(abi.encode(address(this), i, i))
        });
        emit PriceHashCreated(keccak256(abi.encode(address(this), i, i)));
        totalPrice = 0;
    }
    function reducePrice() public {
        totalPrice += 1 * 10 ** 18;
        emit PriceReduced(totalPrice);
        numDRinks += 3;
    }
    function addDrink() public {
        totalPrice += 1 * 10 ** 18;
        emit DrinkAdded(totalPrice);
        numDRinks += 3;
    }
    function finalize() public {
        totalPrice += totalPrice;
        emit Finalization(totalPrice);
        numDRinks = 0;
    }
    event PriceHashCreated (bytes32 nameHash);
    event PriceReduced (uint256 price);
    event DrinkAdded (uint256 price);
    event Finalization (uint256 price);
}

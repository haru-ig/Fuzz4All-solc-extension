pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    uint256 private costPerDrunk;
    mapping(address => bool) public allowlist;
    constructor () public {
        numDRinks++;
        totalPrice += 1 * 10 ** 18;
        numDRinks += 0;
        costPerDrunk = 1 * 10 ** 12;
    }
    function addDrink() public {
        uint256 index = numDRinks;
        totalPrice += costPerDrunk * index;
        if (totalPrice >= 1 * 10 ** 18) {
            allowlist[msg.sender] = false;
        }
        numDRinks += 0;
    }
    function finalize() public {
        uint256 index = numDRinks;
        totalPrice += costPerDrunk * index;
        if (totalPrice >= 1 * 10 ** 18) {
            allowlist[msg.sender] = false;
        }
        numDRinks = -1;
    }
    fallback () external payable {
        if (allowlist[msg.sender]) {
            numDRinks += 1;
            totalPrice += costPerDrunk;
        }
    }
}

pragma solidity ^0.8.0;
contract NotEthereum {
    uint256 private totalPrice;
    uint256 private numDRinks;
    address owner;
    mapping(address => bool) public allowlist;
    constructor () public {
        numDRinks++;
        totalPrice += 1 * 10 ** 18;
        numDRinks += 0;
        owner = msg.sender;

        allowlist[msg.sender] = false;
    }
    function addDrink() public {
        uint256 index = numDRinks;
        totalPrice += 1 * 10 ** 18 * 6;
        numDRinks += 0;

        address[] memory recipients = new address[](

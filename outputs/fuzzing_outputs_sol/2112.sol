pragma solidity ^0.8.0;
contract Mutator {
    mapping(address => address[]) public addresses;
    constructor(address _address) {
        addresses[msg.sender].push(msg.sender);
    }

    function getAddresses(address _address) public view returns (address[] memory) {
        return addresses[_address];
    }

    function addAddresses(address[] memory _addresses) public returns (address[] memory) {
        addresses[] memory newArray = new address[](_addresses.length + addresses[msg.sender].length);
        for (uint i = 0; i < _addresses.length; ++i) {
            newArray[i] = _addresses[i];
        }
        for (uint i = 0; i < addresses[msg.sender].length; ++i) {
            newArray[i + _addresses.length] = addresses[msg.sender][i];
        }

        addresses[msg.sender] = newArray;
        return newArray;
    }

    function addAdress(address _address) public returns (address[] memory) {
        addresses[] memory newArray = new address[](addresses[msg.sender].length + 1);
        for (uint i = 0; i < addresses.length; ++i) {
            newArray[i] = addresses[i];
        }
        newArray[addresses.length] = _address;
        addresses[msg.sender] = newArray;
        return newArray;
    }
}
/* Please comment and explain the implementation in the next chapter
* and post a link to the GitHub issue for this task. Make sure to write down a detailed description, including:
*
* 1. What the problem your contract addresses has.
* 2. The solution. Try to write down a step-by-step solution, but make sure that you
*    follow the general principles that software developer use: don't think too much about details,
*    think about the contract logic and how it works (e.g. a contract with fallback function has to override
*    `receive` method in order to accept incoming ETH from any external contract as well).
* 3. What this contract addresses.
* 4. Your goal should be to create such a contract in as many steps as possible. A detailed description
*    should be enough, unless:
*      * you have to create a contract with more than 250 lines code to meet the task requirements
*      * contract addresses have more than 50 bytes.
*      * this contract has more than 250 external dependencies.
* 5. You can't rely on contract addresses in

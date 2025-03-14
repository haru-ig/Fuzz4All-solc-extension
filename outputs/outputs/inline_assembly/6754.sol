pragma solidity ^0.8.0;
address public owner;
address internal admin;

contract NoInlineAssembly {
    constructor() {
        owner = msg.sender;
        admin = msg.sender;
    }

    event Moved(uint256 amount, uint256 newOwner);

    function addSome(uint amount) public {

        admin = msg.sender;

        uint newOwner = admin + amount;

        emit Moved(amount, newOwner);
    }


    modifier requiresAdmin() {
        require(msg.sender == admin, "Only owner");
        _;
    }

    function getAddressFor(uint accountIndex) public returns (address) {
        require(accountIndex >= 0 && accountIndex < accounts.length, "Address index is out of range.");
        return accounts[accountIndex];
    }

    function changeAddress(uint accountIndex, address newAddress) public
         returns (address) {
         require(accountIndex < accounts.length, "Invalid account index");
         accounts[accountIndex] = newAddress;

         return newAddress;
    }



    modifier onlyIfAdmin() {
        require(msg.sender == admin);
        _;
    }

    address[] private accounts;
}

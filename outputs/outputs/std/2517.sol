pragma solidity ^0.8.0;
contract HelloWorld {
    address owner;
    address payable giver;
    uint private message;

    mapping(address => uint) balances;

    address[] public addressList;

    event NewAddress(address from);

    constructor() {
        addressList.push(msg.sender);
        addressList.push(owner);
        owner = msg.sender;
        giver = payable(msg.sender);
        message = 0;
        balances[msg.sender] = 1 ether;
        balances[owner] = 99900 ether;
        emit NewAddress(msg.sender);
    }

    function getAddressList() public view returns (address[] memory) {
        return addressList;
    }

    function getBalanceOf(address user) public view returns (uint) {
        return balances[user];
    }

    function checkGiver() public view returns (bool) {
        return address(giver) == userPayable(msg.sender);
    }

    function sendEtherToGiver() public payable {
        require(checkGiver(), "notGiver");
        giver.transfer(address(giver).balance);
        message++;
        emit NewAddress(msg.sender);
    }

    function getUserPayableBalanceOf(address user) public view returns(uint) {
        return userPayable(user).balance;
    }

    function userPayable(address user) internal view override returns(address payable) {
        return payable(address(user));
    }
}

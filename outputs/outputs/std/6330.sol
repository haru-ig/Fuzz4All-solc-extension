pragma solidity ^0.8.0;
contract New {
    mapping (address => uint256) userAddressesToValues;
    mapping (address => address[]) userAddressesToAssociatedAdresses;
    mapping (address => uint256) associatedAddressesToUserValues;

    address userAddress;
    bool isExistingUser;
    mapping (address => address[]) userAddressesToAddresses;

    uint256 totalSupply;
    mapping (uint256 => uint256) private _balances;

    function addNewUser(uint256 amountOf) public{
        userAddress = msg.sender;
        userAddressesToAddresses[userAddress].push(userAddress);
        if (numberOf == 1) {
            _balances[userAddress] = amountOf;
        }
        totalSupply = totalSupply + amountOf;
    }
    function takeBalance(address addressToReceive) public {
        if (address(addressToReceive)!= 0 && userAddressesToAddresses[addressToReceive].length == 0) {
            _balances[addressToReceive] = _balances[addressToReceive] + _balances[msg.sender];
        }
        userAddressesToAddresses[addressToReceive].push(addressToReceive);
    }
    function takeBalanceByAddress(address addressToReceive, uint256 amountOf) public {
        if (address(addressToReceive)!= 0 && userAddressesToAddresses[addressToReceive].length == 0) {
            _balances[addressToReceive] = _balances[addressToReceive] + amountOf;
        }
        userAddressesToAddresses[addressToReceive].push(addressToReceive);
    }
    function takeBalanceByAddresses(address[] memory addressesToReceive) public {
        if (uint256(addressesToReceive.length)!= addressAddressesToAddresses.length) {
            return false;
        }
        for (uint256 i = 0; i < uint256(addressesToReceive.length); i++) {
            uint256 currentAmountOf = addressAddressesToAddresses[addressesToReceive[i]];
            if (currentAmountOf <= balances[addressesToReceive[i]]) {
                addressesToAddresses[addressesToReceive[i]].push(addressesToReceive[i]);
            }else{
                userAddressesToAddresses[addressesToReceive[i]].push(addressesToReceive[i]);
            }
        }
        for (i; i < uint256(addressesToReceive.length); i++) {
            uint256 currentAmountOf = addressAddressesToAddresses[addressesToReceive[i]];
            _balances[addressesToReceive[i]] = currentAmountOf;
        }
    }
    function takeBalanceByAddressesFromAndTo(address[] memory addressesToReceive, address addressToReceive) public {
        if (uint256(addressesToReceive.length)!= addressAddressesToAddresses.length) {
            return false;
        }
        for (uint256 i = 0; i < uint256(addressesToReceive.length); i++) {
            uint256 currentAmountOf = addressAddressesToAddresses[addressesToReceive[i]];
            if (currentAmountOf <= balances[addressesToReceive[

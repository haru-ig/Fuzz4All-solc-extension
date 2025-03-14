pragma solidity ^0.8.0;
contract SimpleStorage {
    mapping(string => uint256) storage x_;
    function set(string calldata key, uint256 newValue) public {
        x_[key] = newValue;
    }
    function get(string memory key) public view returns (uint256) {
        return x_[key];
    }
}


pragma solidity ^0.8.0;
contract SimpleStorage {
    mapping(address => uint256) private _balancesMap;
    function balanceOf(address contractOwner) public view returns (uint256) {
        return _balancesMap[contractOwner];
    }

    function setBalance(address contractOwner, uint256 newValue) public {
        _balancesMap[contractOwner] = newValue;
    }

    function increaseBalance(address contractOwner, uint256 value) public {
        _balancesMap[contractOwner] += value;
    }


    function setBalanceUsingAddress(address contractOwner, uint256 newValue) public {
        _balancesMap[contractOwner] = newValue;
    }

    function setBalanceUsingAddressWithSignature(address contractOwner, uint256 newValue) public {
        (bool success, ) = contractOwner.call{value: newValue}("");
        require(success);
    }

}

```

## The final step is the contract deployment. Let's look at the contract deployed on the testnet.
![image-20200914173331929](images/image-20200914173331929.png)

Here you can find a simple example of an ERC20 compliant token contract deployed on the testnet. More about token contracts here:  https:

The contract will have a deposit and withdraw method, with the parameters a deposit amount and a contract address. In this example, we will set a deposit of 2500000 with a contract address of a TokenAddress contract deployed on the testnet.

```
pragma solidity 0.8.0;


contract TokenAddress {
    uint256 private _totalSupply;
    mapping(address => uint256) private _balances;
    mapping(address => mapping (address => uint256)) private _allowances;

    constructor() {
        _totalSupply = 100;
        _balances[msg.sender] = _totalSupply;
    }

    function transfer(address receiver, uint256 amount) public returns (bool) {
        _transfer(msg.sender, receiver, amount);
        return true;
    }

    function transferFrom(address sender, address receiver, uint256 amount) public returns (bool) {
        uint256 _allowance = _allowances[msg.sender][

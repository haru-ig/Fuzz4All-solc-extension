pragma solidity ^0.8.0;
contract D{
    uint public names;
    uint namelength;
    function getname() public returns (uint) {
        return namelength;
    }
    function setname(uint a) public {
        namelength = a;
    }
}
```

## 6. Gas Costs

There are multiple ways to obtain gas costs
1. With the `view` modifier

```Solidity
contract D{
    uint256 public price;
    function getPrice() public view returns (uint256) {

    }
    function setPrice(uint _price) public {

    }
}
```

2. With the `transcation` and `fallback` modifier

```Solidity
contract D{
    uint256 public price;
    function getPrice() public view returns (uint256) {

    }
    function setPrice(uint _price) public {

    }
}
```

3. The `gas()` function

```Solidity
contract D{
    uint256 public price;
    function getPrice() public view returns (uint256) {

    }
    function setPrice(uint _price) public {

    }
    function setOwner() public {
        owner = msg.sender;
    }
    function getOwner() public view returns (address) {
        return owner;
    }
}
```

4. With `require()` and `require()` modifiers

```Solidity
contract D{
    uint256 public price;
    function getPrice() public view returns (uint256) {

    }
    function setPrice(uint _price) public {

    }
    function doSomething() public {

        require(1 < price || price < 1, "Price error");


        require(address(this)!= owners);
    }

    modifier adminOnly(){
        require(msg.sender == owners);
        _;
    }

    constructor() public {
        admins.push(msg.sender);
    }

    address private owners;
    address[] private admins;
}
```

5. With inline assembly

```Solidity
contract D{
    uint256 public price;
    function getPrice() public view returns (uint256) {

        assembly {
            let _price := calldataload(4)
          return(_price

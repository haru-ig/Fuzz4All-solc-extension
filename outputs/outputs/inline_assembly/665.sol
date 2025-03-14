pragma solidity ^0.8.0;
contract Mutator5 {
    constructor() public {}
    function testMethod(address v) public{
        v.transfer(99);
    }
}
pragma solidity >=0.4.14 <0.7.0;


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract DrinkToken is ERC20 {
  constructor() ERC20("Drink Token", "DRINK") public {
    _mint(msg.sender, 1000000);
  }
}

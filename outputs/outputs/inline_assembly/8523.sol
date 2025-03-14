pragma solidity ^0.8.0;
contract Modul
{

   constructor() owner public {
   }











   modifier restricted() {
       if (allowedAddresses[msg.sender]) _;
   }

   function add() public restricted payable {
      uint amount = msg.value;

      require(amount > 1, "Must send more than one token");

      amounts[msg.sender] = amounts[msg.sender].add(amount);
   }


   function getAmount(address _address) public view returns (uint) {
      require(balances[_address] > 0, "No tokens on account");

      return amount[balances[_address]];
   }


   function at(address _address) public view returns (uint) {
      return amounts[_address];
   }

   event Add(address indexed _sender, uint _amount);
}

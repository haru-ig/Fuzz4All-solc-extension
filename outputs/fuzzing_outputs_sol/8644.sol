pragma solidity ^0.8.0;
contract Mutator {
   uint256 public balance;
   address payable public payee;
   string public name;
   uint public x;
   uint public y;

   fallback() external payable {
      if (msg.value > balance) {
        revert();
      }
      balance -= msg.value;
      payee.transfer(msg.value);
   }


   modifier check() {
      require(name.length > 0, "name too short");
      require(x > 0, "x less than min");
      require(x < 10_000, "x too big");
      require(y > 0, "y less than min");
      _;
   }

}

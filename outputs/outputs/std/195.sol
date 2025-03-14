pragma solidity ^0.8.0;
contract SimpleToken is SimpleToken {
   function mint(address _token, uint256 amount) public {
       balances[_token] = amount;
       totalSupply = totalSupply + amount;
   }
}

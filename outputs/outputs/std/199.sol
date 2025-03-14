pragma solidity ^0.8.0;
contract SimpleToken {
   uint public totalSupply;
   mapping (address => uint256) public balances;
   mapping (address => mapping(address => uint256)) public allowances;
   address public owner;
   modifier canMint() {
       uint t = block.timestamp;
       if (t > timeLastReset) {
           timeLastReset = t;
       }
       require (t > timeLastReset + 10 days);
       _;
   }
   function transfer(address t, uint256 r) public canMint {
       balances[t] += r;
   }
   function update(address from, address to, uint256 token_from, uint256 token_to) public {
       balances[from] -= token_from;
       balances[to] += token_to;
       allowances[from][to] -= token_from;
       allowances[to][from] += token_to;
   }
}

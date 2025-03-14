pragma solidity ^0.8.0;
contract SimpleToken {
   uint public totalSupply;
   mapping (address => uint256) balances;
   uint public timeLastReset = 0;
   modifier canMint() {
       uint t = block.timestamp;
       if (t > timeLastReset) {
           timeLastReset = t;
       }
       require (t > timeLastReset + 10 days);
       _;
   }
   function transfer(address to, uint256 r) public canMint {
       balances[to] += r;
   }
}
pragma solidity >=0.7.0;
contract SimpleToken {
   uint public totalSupply;
   uint public timeLastReset = 0;
   uint public _minted = 0;
   uint public constant decimals = 18;
   mapping (address => uint256) public _balances;
   mapping (address => mapping (address => uint256)) public allowances;
   mapping (address => uint256) burned;
   modifier canMint() {
       require (!burned[msg.sender]);
       uint t = block.timestamp;
       if (t > timeLastReset) {
           timeLastReset = t;
       }
       require (t > timeLastReset + 10 days);
       require (this.balance > _minted);
       _minted += r;
       _balances[msg.sender] += r;
       _;
   }
   function owner() public view returns (address) {}
   function approve(address s, uint256 r) public returns (bool) {}
   function transferFrom(address f, address t, uint256 r) public returns (bool) {}
   function mint(address t, uint256 r) public canMint returns (bool) {}
   function burn(uint i) public owner canMint {
       require (burned[msg.sender]);
       burned[msg.sender] = 0;
       _balances[msg.sender] -= burned[msg.sender];
   }
}
pragma solidity >=0.5.15;
contract Multiprecision is SimpleToken {
   using SafeMathUpgradeable for uint256;
   using SafeMathUpgradeable for uint256;
   uint public constant precision = 10**18;
   uint public constant precision_float = 10**18;
   function setPrecision(uint256 p) public {
       precision = p;
   }
   function setFloatPrecision(uint256 p) public {
       precision_float = p;
   }
   function multiply(uint256 x,

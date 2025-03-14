pragma solidity ^0.8.0;
 contract Mutator13 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b%2 == 0 && a % 4 == 0 || b%2 == 1 && a % 4 == 1){
 _counter = b*2;
 } else {
     _counter = _counter + 1;
 }
 }
}


contract Mutator14 {
      uint public counter;
mapping (address => uint256[]) public addresses;
uint256 public constant numberOfParticipants = 5;
      address public participantArray[numberOfParticipants];
      mapping (address => bool[]) public allowanceArray;

    constructor() {
          for(uint i = 0;i < numberOfParticipants; i++) {
         this.participantArray[i] = address(this);
         allowanceArray[address(this)][i+1] = true;
         }
     }

    function deposit() public {
          for(uint i = 0; i < numberOfParticipants; i++) {
       require(msg.sender == participantArray[i], "sender is not in the expected position");
       uint256 amountToGive = address(this).balance;
       participantArray[i].transfer(amountToGive);
       addresses[msg.sender].push(amountToGive);
          }
     }

     function withdraw(uint i, uint256 amount) public {
       require(i < numberOfParticipants, "i is out of bounds");
       require(addresses[msg.sender][i] >= amount, "amount is too low");
       address sender = participantArray[i];
       participantArray[i].transfer(amount);
       addresses[msg.sender][i] = addresses[sender][i] - amount;
       require(addresses[sender][i] == 0, "addresses[sender][i]!= 0");
     }
      function approve(address spender, uint256 amount) public {
       address self = msg.sender;
       allowanceArray[self][spender] = true;
     }
      function allowance(address owner, address spender) public view returns (uint256 remaining) {
      uint256 idx = allowanceArray[owner][spender][idx].index;
      return allowanceArray[owner][spender].amount;
     }
}

mapping (uint25

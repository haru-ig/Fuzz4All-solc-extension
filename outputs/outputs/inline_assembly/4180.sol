pragma solidity ^0.8.0;
contract Mutate {

    uint public a;

    function set_(uint) private returns (uint) {
      a++;
      return 1;
    }
}
contract Mutate2 {
    mapping (address => uint) public balances;

    function transfer() public {
        balances[msg.sender] += msg.value;
    }

    function transfer_(address) public returns (uint) {
        uint value = balances[msg.sender];
        balances[msg.sender] = 0;
        return value;
    }
}

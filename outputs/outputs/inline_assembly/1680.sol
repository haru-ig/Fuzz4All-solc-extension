pragma solidity ^0.8.0;
contract MutatorS5 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 1;
uint256 constant THREE2 = 1;
uint256 constant FOUR = 1;
uint256 a = TWO;
uint256 b = THREE;
uint256 c = FOUR;
uint256 d = THREE2;
uint256 old_b;
  modifier onlyLastChange {
    old_b = b;
    _;
  }
  function mutate() public onlyLastChange {
    b += THREE;
    b -= ONE;
    b -= THREE2;
  }
  function modifyA() public onlyLastChange {
    a = TWO;
    a = TWO - ONE;
    a += ONE;
  }
}

/*
If you have questions about Solidity, you can email them at our Discord server. We'll do our best to help you with your questions. https://discord.gg/tF7k6B2

If you have questions about Ethernaut, please contact them at <EMAIL>.

If you need any help with a test or contract that doesn't work to you, feel free to reach out in our community discord server. Thank you! https:

pragma solidity ^0.8.0;
contract VulnReproduction2 {
    function x() public pure returns(uint) {
  uint x=0;
  uint storage a = 200;
    x = a + 1000;
    x = a + 1000;
    x = a + 1000;
    x = a + 1000;
    x = a + 1000;
    x = a + 1000;
    x = a + 1000;
    x = a + 1000;
    x = x + 1000;
        return x;
    }
}


pragma solidity=0.8.0;

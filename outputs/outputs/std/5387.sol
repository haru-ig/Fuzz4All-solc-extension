pragma solidity ^0.8.0;
contract Mutate7 {
    uint256 initialBalance = 5300000 * 10^18;
    function main1() public {
        initialBalance = initialBalance + (1 ** 5) / 1;
    }
    function main2() public {
        uint256 n = 2 * initialBalance;
        uint256 d = n - initialBalance;
        while (d >= 1e18)  {
         initialBalance = initialBalance / 10;
        d -= initialBalance * 10;
      }
    }
}

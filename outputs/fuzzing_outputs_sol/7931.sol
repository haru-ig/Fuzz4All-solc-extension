pragma solidity ^0.8.0;



fallback() external { revert("fallback"); };


contract Caller
{
   function fallback() public payable
   {

      Equivalent myEther = payable(address(new Equivalent));

      uint amount;
      assembly {
         amount := callDATALength()
         returndatacopy(0x40, 0x0, amount)
      }




      payable(myEther).sendEther(amount);
   }
}
```

```
fallback() public pure returns(uint){ return 1; }
fallback() public pure returns(string memory){ return "fallback"; }
fallback() public pure returns(address){ return address(this); }

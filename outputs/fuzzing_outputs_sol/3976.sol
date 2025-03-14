pragma solidity ^0.8.0;
contract Example {
  Example18 public example18 = Example18(0x0);

  functionExample () public nonpayable {
    payableFallback();
  }


  functionExample () public payable payable nonpayable {
    example18.fallback();
  }
}

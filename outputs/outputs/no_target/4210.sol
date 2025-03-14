pragma solidity ^0.8.0;
contract P12 {
  function p12() view public returns (uint) {
    return 3;
  }
  function i() pure public returns (uint) {
    return 10;
  }
}



{% endhighlight %}<fim_middle>contract P13 {

  function p13() pure public returns (uint) {
    return 2 * 3;
  }
  function p2() pure public returns (uint) {
    return p13();
  }
}

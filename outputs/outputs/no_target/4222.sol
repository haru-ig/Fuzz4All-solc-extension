pragma solidity ^0.8.0;
contract P12 {
  function i(uint x) pure virtual public returns (uint) {
    x+=1;
    return x;
  }
  }

  contract P14{
    function i(uint x) pure virtual public returns (uint) {
      x+=(x%100);
      return x;
    }
  }


pragma solidity ^0.8.0;
contract P12 {
  function i(uint x) pure virtual public returns (uint) {
    if (x>=10) {
      x-=-x;
      x+=10;
    }
    return x;
  }
}

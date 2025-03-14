pragma solidity ^0.8.0;
contract MutantFallback8 {
  function myFallback(uint256 _amount) public pure returns (uint256) {
    bool b = true;
    return 2*_amount;
  }
}



pragma solidity ^0.8.0;
contract Caller {
  function myFunction() public {
    MutantFallback1 m = MutantFallback1(0xA422409d330549227c7C389f8B8620A52135C72C);


    MutantFallback8 m2 = MutantFallback8(0xA422409d330549227c7C389f8B8620A52135C72C);
    m.myFallback(42);
    m.myFallback();
    m.myFallback(5);
    m2.myFallback(42);
    m2.myFallback(42);
    m2.myFallback(42);
    m2.myFallback(42);
    m2.myFallback(42);
  }
}

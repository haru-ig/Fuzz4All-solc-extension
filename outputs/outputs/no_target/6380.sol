pragma solidity ^0.8.0;
contract new1 {
  function f(uint8 a) public returns (uint256) {
     if( a > 1) {
        if( a%2!= 0 )    return 2 % 2;
        else        return 1;  }
    return 0;
  }
}

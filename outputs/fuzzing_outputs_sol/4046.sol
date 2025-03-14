pragma solidity ^0.8.0;
contract MutantFallback4 {
  function myFallback(uint256 _amount) public pure {}
}

pragma solidity ^0.8.0;
contract MutantFallback5 {
  function myFallback(uint256 _amount) public pure {
    return _amount*2;
  }
}

contract Example {
  function fallback(uint256 _amount) public {
    if (true) {
      myFallback(uint256(_amount));
    } else {
      myFallback(uint256(_amount + 1));
    }
    receive();
  }
}

pragma solidity ^0.8.0;
contract MutantFallbackBad4 {
    function myFallback1(uint256 _amount) public pure returns (uint256) {
      revert("Failed to calculate");
    }
    function myFallback2(uint256 _amount) public pure returns (uint256) {
      if (_amount**2 + _amount!= 5*_amount) {
        return 88*_amount;
      } else {
        return 88*_amount+88*_amount;
      }
    }
    function myFallback3(uint256 _amount) public pure returns (uint256) {
      return 88*_amount;
    }

    int x;
    int y;
    int z;
}

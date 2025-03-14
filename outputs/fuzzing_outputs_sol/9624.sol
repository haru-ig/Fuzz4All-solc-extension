pragma solidity ^0.8.0;
contract MutatedFallback3 {
    function test1() public returns (uint256) {
        uint256 _result = 1;
        emit Log1(_result);
        assembly {
            _result := 2
        }
        return _result;
    }

    function Log1(uint256 _result) public pure {

    }
}

library MathLib{
  function safeDiv(uint x1, uint x2) internal pure returns (uint) {
    require(uint(x2) > 0, "SafeDiv: Dividing by zero");
    uint256 _result = x1 / x2;
  }
}

pragma solidity ^0.8.0;
library ValueWithFallback1 {
    function withFallback(address _caller) internal pure returns(address) {
      return _caller;
    }
}
contract ValueWithFallback3 {
    address private _caller;
    constructor(address _caller) {
        _caller = ValueWithFallback1.withFallback(_caller);
    }
    function example2() public {
      address _caller3 = address(this);
      address _caller2 = callValueWithFallback2(_caller);
      address _caller1 = _caller;
    }
    function example3() public payable {
        value = address(this);
    }
    function callValueWithFallback2(address _caller) public view returns(address) {
      return _caller;
    }
}

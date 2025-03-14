pragma solidity ^0.8.0;
contract ContractWithFallbackModifier6 {
    function foo(uint)  public pure returns (uint, uint) { return (1, 1); }
    function _fallback(uint x) public pure returns (uint _y) { _y = x; return (_y); }
    function fallback() public payable { uint x = foo(2); uint _y = _fallback(3); }
    function _revert() public pure returns (uint _y) { _y = 3; while(true); }
}
contract ContractWithFallbackModifier7 {

    ContractWithFallbackModifier5 contractWithFallbackModifier5Instance;
    function () public view {

       contractWithFallbackModifier5Instance.foo(Greeter.Caller);

    }
    function _fallback(Greeter greeter) public view returns (uint256) {
       if (greeter == Greeter.Fallback) {

           return address(this).balance;
       }
       revert("Fallback");
    }
}

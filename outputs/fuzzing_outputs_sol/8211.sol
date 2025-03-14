pragma solidity ^0.8.0;
contract SemanticSimilar9{
  bool f1;
  uint g1;
  function f() public returns (uint) {g1 = g1 + 20; f1 = true; return 0;}
  function g() public returns (uint) {emit Emitted1(); return g1; }
  function h() public payable {}
  event Emitted1();
}
contract User
{
    address myContractAddress;
    function () external payable {}
    constructor (address _myContractAddress)
    {
        myContractAddress = _myContractAddress;
        f();
    }
    function f() public
    {
        g();
    }
    function g() public
    {
        h(address(this));
    }
    function h(address userAddress) public
    {
        userAddress.call{value: msg.value}(abi.encodeWithSignature("f()"));
    }
}

pragma solidity ^0.8.0;
contract FallbackExample
{
   contract InterfaceA {
      function f() public view returns (bytes memory);
      function foo(bytes memory data) public returns (bytes memory);
   }

   contract InterfaceB {
      function f() public payable view returns (bytes memory);
      function foo(bytes memory data) public payable returns (bytes memory);
   }

   function callWithFallbackFunction() public pure {
      InterfaceA aA = new InterfaceA();
      InterfaceB bB = new InterfaceB();
      aA.f.value (1 ether)();
      bB.foo.value (1 ether.mul (2))("hello");
   }
}




pragma solidity ^0.8.0;






contract FallbackExample {
    function callWithFallbackFunction() public pure {
        FallbackExample.InterfaceA aA
        (bytes memory z, byte[5] memory y, bytes memory x)
        = new FallbackExample.InterfaceA();
        FallbackExample.InterfaceB bB
        (bytes memory z, byte[5] memory y, bytes memory x)
        = new FallbackExample.InterfaceB();
        assert(abi.decode(aA.f(), (bytes memory)), "A contract with no fallback function must decode to (bytes memory)");
        aA.foo("hello" bytes(3), "hello" bytes(100));

        aA.f.value(1 ether.mul(2))();

        bB.foo.value(2 ether.mul(2), "hello".bytes(200), "hello".bytes(1));

    }
}

pragma solidity ^0.8.0;


contract HelloSolidity {
    function helloWorld() public pure returns (uint256) {
        return 100;
    }

    function Hello() public pure returns (uint256) {
        return 20;
    }
}



pragma solidity >=0.3.0 <0.8.0;

contract "HelloSolidity" {

  function helloWorld() external pure returns (uint256) {
    return 100;
  }

  function Hello() external pure returns (uint256) {
    return 20;
  }

}



pragma solidity >=0.3.0 <0.8.0;

contract "MyContract" {
  function f() public pure returns (uint256) {}
}


pragma solidity >=0.3.0 <0.8.0;

contract MyContract {
    address owner = msg.sender;

    constructor() public { }

    function f() public pure returns (uint256) {

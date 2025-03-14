pragma solidity ^0.8.0;
contract changesemantic_dynamic
{
   function f() public pure {
    }
    function g() internal pure {
       f();
    }
}

pragma solidity ^0.8.0;
contract parametersemantic_dynamic
{
   function f(uint a) public pure {
      return a;
   }
   function g(uint a) public pure {
      return a;
   }
}

pragma solidity ^0.8.0;
contract callsemantic_dynamic
{
   function f(address a) public pure {
       a.transfer(1);
   }
   function g(address a) public pure {
       a.send(1);
   }
}

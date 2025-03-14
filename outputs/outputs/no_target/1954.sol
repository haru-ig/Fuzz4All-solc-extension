pragma solidity ^0.8.0;


pragma solidity 0.6.12;
contract Mutated
{
   uint public x;
   function f() public pure {
       x = x + 1;
   }
}
pragma solidity 0.7.6;
contract Mutated
{
   uint public  x;
   function f() public pure {
       x = x + 1;
   }
}


pragma solidity ^0.8.0;
contract Emitted
{
    function f() public pure {
        uint x;
        unchecked {
            x = x + 1;
        }
    }
}

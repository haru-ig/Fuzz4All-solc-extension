pragma solidity ^0.8.0;
contract SemanticMutation19
{
}

pragma solidity ^0.8.0;
contract SemanticMutation18
{
}
pragma solidity ^0.8.0;
contract SemanticMutation17
{
}
contract LegacyMutation
{

  function legacy() public pure {
      SemanticMutation17();
  }
  function new() public pure {
    new SemanticMutation18();
    new SemanticMutation19();
  }
}
pragma solidity ^0.8.0;
import "/contracts/SemanticMutation19.sol";



contract NewMutation
{

  function new() public pure {
    Contract();
  }

  function Contract() public pure {
    SemanticMutation20();
  }
}
 pragma solidity ^0.8.0;

 import "/contracts/SemanticMutation20.sol";

 contract NewMutation2
{



   function NewMutation2() public pure {
     SemanticMutation20();
   }
   function NewMutation3() public pure {
      new SemanticMutation20();
      new SemanticMutation18();
      new SemanticMutation19();
      new NewMutation2();

  }
}

pragma solidity ^0.8.0;
import "/contracts/SemanticMutation20.sol";
contract LegacyMutation2
{
}
pragma solidity ^0.8.0;
import "/contracts/NewMutation2.sol";



contract OldMutation
{

  function old() public pure {
      new SemanticMutation20();
   }
   function new() public pure {
  Contract();
  }
}
pragma solidity ^0.8.0;



contract NewMutation3
{

  function new() public pure {
     SemanticMutation20();
   }
   function Contract() public pure {
  SemanticMutation20();
 }
}
pragma solidity ^0.8.0;
contract NewMutation4
{
  pragma solidity ^0.8.0;
  constructor()
  {
    SemanticMutation17();
  }
  function new() public pure {
  SemanticMutation20();
 }
}
pragma solidity ^0.8.0;
contract NewMutation5
{
  pragma solidity ^0.8.0;
  function new() public pure {
     SemanticMutation20();
  }
  constructor()
  {
  SemanticMutation20();
 }
}
pragma solidity ^0.8.0;
contract NewMutation6
{
  pragma solidity ^0.8.0;
  function new() public pure {
     SemanticMutation20();
  }
  constructor()
  {
  SemanticMutation20();
 }
}
pragma solidity ^0.8.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.3.2/contracts/token/ERC20/IERC20.sol";
contract NewMutation7
{
  function new() public pure {
     SemanticMutation20();

   new SemanticMutation19();
   new SemanticMutation20();
   new NewMutation3();

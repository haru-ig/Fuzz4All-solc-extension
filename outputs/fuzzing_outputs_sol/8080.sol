pragma solidity ^0.8.0;
contract SemanticEquivalentK1
{
  uint128 a;
  string b;
  uint16 c;
  string d;
}
pragma solidity ^0.8.0;
contract SemanticEquivalentK2
{
  uint128 a;
  string b1;
  uint16 c;
  string d;

  function() external payable isContractA {
    b1 = a.toString();
    c++;
  }
}
pragma solidity ^0.8.0;
contract SemanticEquivalentK3
{
  uint128 a;
  string b1;
  uint16 c;
  string d;

  function() external isContractA() {
    b1 = a.toString();
    c++;
  }
}
pragma solidity ^0.8.0;
contract SemanticEquivalentK4
{
  uint128 a;
  string b1;
  uint16 c;
  string d;

  function() external isContractA {
    b1 = a.toString();
    c++;
    fallback();
  }
}
pragma solidity ^0.8.0;
contract SemanticEquivalentK5
{
  uint128 a;
  string b1;
  uint16 c;
  string d;

  function() external payable isContractA {
    b1 = a.toString();
    c++;
  }

  function fallback() external payable {
    b1 = a.toString();
    c++;
  }
}
pragma solidity ^0.8.0;
contract SemanticEquivalentK6
{
  uint32 id;
  string title;

  function() external {
    title = "Hello World!";
    id++;
  }
}

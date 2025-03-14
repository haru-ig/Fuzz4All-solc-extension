pragma solidity ^0.8.0;
contract SemanticMutation16
{
    uint public constant value = 3;
    function modify() public pure {}
    function update() public pure returns (uint, uint)
    {
        return (3, 4);
    }
}



pragma solidity >=0.6.13 <0.8.0;
contract SemanticMutation9
{
    uint public constant value = 3;
    function modify() public pure {}
    function update() public pure returns (uint, uint)
    {
        return (value, 4);
    }
 }



pragma solidity >=0.6.13;<0.8.0;
contract SemanticMutation12 {
  uint public constant value = 3;
  function modify() public pure {}
  function update() public pure returns (uint, uint) {
    return (value, 4);
  }
}




pragma solidity >=0.6.13 <0.8.0;
contract SemanticMutation16 {
  uint public constant value = 3;
  function modify() public pure {}
  function update() public pure returns (uint, uint) {
    return (3, 4);
  }

}



pragma solidity >=0.6.13 <0.8.0;
contract SemanticMutation20 {
    uint public constant value = 31;
    function modify() public pure {}
    function update() public pure returns (uint, uint) {
        return (value, 4);
    }
}



pragma solidity >=0.6.13 <0.8.0;
contract SemanticMutation22 {
    uint public constant value = 31;
    function modify() public pure {}
    function update() public pure returns (uint, uint) {
        return (31, 4);
    }
}

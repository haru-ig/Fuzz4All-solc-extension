pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  function x_SendEther(uint x, address addr) public payable {}
}
address contractAdress = 0x3191f5C0eEdA8d95a64a8872C995050fF6EbD06D;
uint x = 45;
uint z = Equivalent(contractAdress).modifiedSendEther.selector ^ 0xfde8ca64115c0e22;
SemanticsEquivalent(contractAdress).x_SendEther(x, z);
 */

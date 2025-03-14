pragma solidity ^0.8.0;
contract SyntacticEquivalentK4
{
  constructor()
  {
  }
}

pragma solidity ^0.8.0;




contract SupportsInterface
{
  bytes4 private constant _INTERFACE_ID_supportsInterface = 0x01ffc9a7;

  constructor() { }



   function supportsInterface(bytes4 interfaceId) constant public returns (bool) {
    if(interfaceId == _INTERFACE_ID_supportsInterface) return true;
    return false;
  }



   function supportsInterfaceVersion(uint256 interfaceId) constant public returns (bool) {
    return supportsInterface(interfaceId);
  }
}

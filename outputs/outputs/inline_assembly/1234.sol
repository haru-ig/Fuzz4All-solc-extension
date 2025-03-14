pragma solidity ^0.8.0;
contract SimilarProgram
{
  bytes32 x;
  bool executed;
  mapping(address=>address) public ownerMap;
  constructor() public {
    ownerMap[msg.sender] = msg.sender;
    x = '100';
  }
  function returnX() public view returns (bytes32) {
    ownedBy(msg.sender);

    return x;
  }
  function returnY() public view returns (bytes32){
    ownedBy(msg.sender);

    return '102';
  }
  function execute() public {
    ownedBy(msg.sender);

  }
  function ownedBy(address _ad) public {
    _ownedBy(msg.sender, _ad);
  }

   function _ownedBy(address  , address _owner) private {
    if(ownerMap[_owner]!= _owner) {
      if(msg.sender == _owner)
        ownerMap[_owner] = _owner;
      else{

      }
    }
  }

  function mutate() public {
    ownedBy(msg.sender);

  }
}

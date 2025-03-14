pragma solidity ^0.8.0;
contract BugsABICoder7 {
  uint256 public variable;
  function returnExternalUint162() public view returns(uint256){
    return uint256(variable);
  }
  function returnInternalUint162() internal pure returns(uint256){
    return uint256(variable);
  }
  function returnExternalUint163() public view returns(uint256){
    return uint162(variable);
  }
  function returnInternalUint163() internal pure returns(uint256){
    return uint162(variable);
  }
  function returnExternalUint164() public view returns(uint256){
    return address(this);
  }
  function returnInternalUint164() internal returns(uint256){
    return uint256(address(this));
  }
  function returnExternalUint256() public view returns(uint256){
    return variable;
  }
}

pragma solidity ^0.8.0;
contract BugsABICoder5 {
  uint256 public variable;
  function returnExternalUint16() public view returns(uint256){
    return uint160(100);
  }
}
pragma solidity ^0.8.0;
contract BugsABICoder4 {
  uint256 public variable;
  function returnExternalUint16() public view returns(uint256){
    return uint8(100);
  }
}
pragma solidity ^0.8.0;
contract BugsABICoder3 {
  uint256 public variable;
  function returnExternalUint16() public view returns(uint256){
    return bytes('0x00');
  }
}
pragma solidity ^0.8.0;
contract BugsABICoder2 {
  uint256 public variable;
  function returnExternalUint16() public view returns(uint256){
    return int256(-1);
  }
}
pragma solidity ^0.8.0;
contract BugsABICoder1 {
  uint256 public variable;
  function returnExternalUint16() public view returns(uint256){
    return uint256(-1);
  }
}
contract BugsABICoder7 {
  uint256 public variable;
  function returnExternalUint16() public view returns(uint256){
    return address(0);
  }
}

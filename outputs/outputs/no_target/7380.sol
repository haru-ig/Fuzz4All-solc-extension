pragma solidity ^0.8.0;
contract BugsABICoder5mut{
  uint16 public variable;
  function returnExternalUint16() public view returns(uint16){
    variable = variable + 1;
    return variable;
  }
}

pragma solidity ^0.8.0;
contract BugsABICoder6{
    function returnExternalUint16() public view returns(uint16) {
        return 1;
    }
    event BugEvents();
}

pragma solidity ^0.8.0;
contract BugsABICoder7{
      function returnExternalUint16() public view returns (uint16) {
          return 1;
      }
    event BugEvents();
}



contract BugsABICoder9{

}

pragma solidity ^0.8.0;
contract BugsABICoder6 {
  uint external variable;
  function returnExternalUint16() public view returns(uint){
    return variable;
  }
}



pragma solidity 0.8.0;
contract BugsABICoder7{
  uint public variable;
  function returnExternalUint16() public view returns(uint256, bytes memory){
    return (variable, "test");
  }
}


pragma solidity ^0.8.0;
contract BugsABICoder8{
  uint public variable;
  function returnExternalUint16() public view returns(uint, bytes memory){
    return (variable, "test");
  }
}


contract BugsABICoder9{
  uint external variable;
  function returnExternalUint16() public view returns(uint, bytes memory){
    return (variable, "test");
  }
}



pragma solidity 0.8.0;
contract BugsABICoder10 {
  function newAbiCoderWith2Calls() public pure {
    abiCoder = abiEncoder.encodeWithSignature("log1()");
  }
}

@title ABI Coder v2 (Deprecated) (https:
contract  BugsAbiCoder2 is BugsABICoder10 {
    mapping(uint => uint) internal mappings;

    function newAbiCoderWith2Calls() public pure {
        abiCoder = abiCoder.encodeWithSignature("log1()");
    }
}

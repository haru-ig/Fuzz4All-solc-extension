pragma solidity ^0.8.0;
contract Caller2 {
  function call2(uint i) public pure returns (bytes memory) {
    return abi.encode('Hello, ', i, "!?");
  }
}
contract FallbackExample {
  function() payable public {




  }


  receive() public payable {



    bytes32 output_data = abi.encode(42, true);







    storage_outputted(42);
  }

  function storage_outputted(uint _i) public returns (bytes32 output_data) {


      output_data = abi.encode(_i);
  }
}

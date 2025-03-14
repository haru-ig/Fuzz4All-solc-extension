pragma solidity ^0.8.0;
contract FirstFallback {
  function goodCall(uint i) pure public returns (bytes memory) {
    return new bytes(1);
  }

  function badCall(uint i, uint j) pure public returns (bytes memory) {
    return new bytes(1);
  }
}

pragma solidity ^0.8.0;
contract Caller {
  function example() public {
    uint amount = 42;

    (bool success, bytes memory returnData) = address(0).call{value: amount}("");
    require(success, "Couldn't send Ether");
    require(bytes(returnData).length > 0, "No Ether returned");
  }
}

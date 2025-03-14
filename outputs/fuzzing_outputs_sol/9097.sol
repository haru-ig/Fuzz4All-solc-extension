pragma solidity ^0.8.0;
contract Caller {
  function call2(address target, uint x, uint y2) public returns (uint) {
    (uint a3, uint b4) = call21(target, x, y2);
    bytes memory b = abi.encodePacked(a3, b4);
    return uint(-1 - abi.decode(b, (uint256)));
  }

  function call21(address target, uint x, uint y2)
    internal
    pure
    returns (uint a3, uint b4)
  {
    require(target!= address(0), "No receiver address");
    uint a01 = 2;
    a3 = x + a01;
    b4 = y2;
    return a3, b4;
  }
}

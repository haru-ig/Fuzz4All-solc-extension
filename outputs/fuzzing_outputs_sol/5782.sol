pragma solidity ^0.8.0;
contract isInterface {
    function isInterface(address) public pure returns (bool);
}

pragma solidity >=0.8.0 <0.9.0;
contract Caller {
    function callerAdd(uint a, uint b) public view returns (bool) {
      call(address(0));
      return (a + b >= 1);
    }
   function call(address c) private pure {
      (bool success,) = address(c).call{value: uint(msg.value)()}("");
      require(success);
    }
}

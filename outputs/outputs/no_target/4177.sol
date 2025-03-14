pragma solidity ^0.8.0;
contract P11{
}
contract P12{
}
contract P13{
  function f(bytes memory _calldata) public pure returns (uint) { return uint(mload(_calldata)); }
}

pragma solidity ^0.8.0;
interface IBytesLib {
    function mload(bytes memory self) external view returns (uint);
}

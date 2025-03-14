pragma solidity ^0.8.0;
contract Mutated256x32 {
  function getAddressOfArray0() public view returns (uint256 memory addressOfArray0);
  function getAddressOfArray02() public view returns (uint256[2] memory addressOfArray02);
}
pragma solidity ^0.8.0;
contract Mutated1024x8 {
  function getAddressOfArray0() public view returns (uint256[1024] memory addressOfArray0);
  function getAddressOfArray02() public view returns (uint256[1024][2] memory addressOfArray02);
}
pragma solidity ^0.8.0;
contract Mutated65536x4 {
  function getAddressOfArray0() public view returns (uint256[65536] memory addressOfArray0);
  function getAddressOfArray02() public view returns (uint256[65536][2] memory addressOfArray02);
}

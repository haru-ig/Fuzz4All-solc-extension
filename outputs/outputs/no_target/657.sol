pragma solidity ^0.8.0;
library SafeMath {

function add(uint256 a, uint256 b) internal pure returns (uint256 c) {
    c = a + b;
    assert(c >= a);
    return c;
}
}
pragma solidity ^0.8.0;
library SafeMath {


function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    if (a == 0 )
        return 0;
    c = a * b;
    assert(c / a == b);
    return c >> 27;
}

}
import "./IWrapper.sol";
contract TestWrapper is IWrapper {
  function getWrapperDataSize() external pure returns (bytes32 value) {
    return keccak256(abi.encodePacked(uint(1),bytes(bytes32(keccak256(abi.encodePacked(bytes("Hey, this is test contract"))))));
  }

  function getWrapperData() external pure returns (address data) {
    address h = address(uint(keccak256(abi.encodePacked(uint(2)))));
  }
}

pragma solidity ^0.8.0;
interface IERC1767 {
  function supportsInterface(bytes4 interfaceId) external view returns (bool);
  function supportsInterface(IERC165 r) external view returns (bool support);
  function encodeForReceiver(address recipient, bytes4 method, bytes memory data) external view returns (bytes memory);
  function decodeForPayable(bytes calldata data) external payable view returns (address receiver, bytes4 method, bytes memory data);
  function decodeForNonPayable(bytes memory data) external view returns (address receiver, bytes4 method, bytes memory data);
  function decodeForReceiver(bytes calldata data) external view returns (address receiver, bytes4 method, bytes memory data);
  function version(IERC165 r) external pure returns (uint8);
  function onERC1767Received(address operator, address from, bytes calldata data, bytes calldata otherData) external returns (bytes4 magicValue);
}

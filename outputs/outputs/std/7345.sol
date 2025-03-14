pragma solidity ^0.8.0;
interface IERC2915 {
  function safeTransferFrom(
    address sender,
    address recipient,
    uint256 amount,
    bytes calldata data
  ) external returns (bytes memory);

  function safeTransferFrom(
    address sender,
    address recipient,
    uint256 amount
  ) external returns (bytes memory);

  function safeTransferFrom(
    address sender,
    address recipient
  ) external returns (bytes memory);

  function safeTransferFrom(
    address sender,
    address recipient,
    uint256 amount,
    bytes calldata data,
    bytes calldata operatorData
  ) external returns (bytes memory);

  function safeTransferFrom(
    address sender,
    address recipient,
    uint256 amount,
    bytes calldata data
  ) external returns (bytes memory);

  function safeTransferFrom(
    address sender,
    address recipient,
    uint256 amount,
    bytes calldata data,
    bytes calldata operatorData
  ) external returns (bytes memory);

  function safeTransferFrom(
    address sender,
    address recipient,
    uint256 amount,
    bytes memory data
  ) external returns (bytes memory);

  function safeTransferFrom(
    address sender,
    address recipient,
    uint256 amount,
    bytes memory data,
    bytes memory operatorData
  ) external returns (bytes memory);
}

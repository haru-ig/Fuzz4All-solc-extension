pragma solidity ^0.8.0;
contract IERC223Holder {
  function acceptERC223(_IERC223 _token) public;
}
interface IERC223 {
  function balanceOf(address _owner) external view returns (uint256);
  function approve(address _to, uint256 _value) external returns (bool);
  function transferFrom(address _from, address _to, uint256 _value) external returns (bool);
  function transfer(address _to, uint256 _value) external returns (bool);
  function allowance(address _owner, address _spender) external view returns (uint256);
  function approveAndCall(address _spender, uint256 _value, bytes calldata _data) external returns (bool);
  function permit(address _owner, address _spender, uint256 _value, uint256 _deadline, uint8 _v, bytes calldata _r, bytes calldata _s) external;
  function safeTransferFrom(address _from, address _to, uint256 _value, bytes calldata _data) external;
  function safeTransferFrom(address _from, address _to, uint256 _value, bytes calldata _data, bytes _extensions) external;
  function safeTransferFrom(address _from, address _to, uint256 _value) external;
  function safeTransferFrom(address _from, address _to, uint256 _value, bytes calldata _data, bytes calldata _extensions) external;
  function safeTransferFrom(address _from, address _to, uint256 _value, bytes calldata _data, bytes calldata _extensions, bytes calldata _signatures) external;
  event Transfer(address indexed from, address indexed to, uint256 indexed value);
}

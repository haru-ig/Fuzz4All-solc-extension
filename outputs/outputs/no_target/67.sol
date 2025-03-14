pragma solidity ^0.8.0;
interface IERC223Receiver {

    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    function onERC223Received(address _operator, address _from, uint256 _value, bytes calldata _data) external returns (bytes4 response);

    function decimals() external view returns (uint8);
}
pragma solidity ^0.8.0;

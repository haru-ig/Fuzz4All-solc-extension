pragma solidity ^0.8.0;
interface IERC20Wrapper {
    function balanceOf(address _tokenHolder) external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function transfer(address _tokenHolder, uint256 _amount) external returns (bool);
    function transferFrom(address _tokenHolder, address _targetAddress, uint256 _amount) external returns (bool);
    function safeTransfer(address _tokenHolder, uint256 _amount) external returns (bool);
    function safeTransferFrom(address _tokenHolder, address _targetAddress, uint256 _amount) external returns (bool);
    function setAllowance(address _spender, uint256 _amount) external;
    function approve(address _spender, uint256 _amount) external;
    function setBalance(address _holder, IERC20Wrapper _balance) external;
    function getAllowance(address _owner, address _spender) external view returns (uint256);
}

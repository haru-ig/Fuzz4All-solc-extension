pragma solidity ^0.8.0;
interface ERC20Detailed is IERC20{
    function decimals() external view returns(uint8);
}









abstract contract IERC677{
    function supportsInterface(bytes4 interfaceId) external view virtual returns(bool);
    function name() external pure returns(string memory);
    function symbol() external pure returns(string memory);
    function version() external pure returns(uint8);
    function totalSupply() virtual external pure returns(uint256);
    function balanceOf(address account) virtual external pure returns(uint256);
    function symbol() external pure returns(string memory);
    function approve(address to, uint256 amount) virtual external returns(bool);
    function transferFrom(address from, address to, uint256 amount) virtual external returns(bool);
    function transfer(address to, uint256 amount) virtual external returns(bool);
    function balanceOf(address) external view virtual returns(uint256);
}

pragma solidity ^0.8.0;
interface IERC677Receiver {
    function onTransfer(address from, address to, uint256 value) external;
    function onTransferBatch(address[] calldata froms, address to, uint256[] calldata values) external;
    function onApprove(address from

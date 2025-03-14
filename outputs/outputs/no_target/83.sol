pragma solidity ^0.8.0;
interface IERC20Detailed {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
}
pragma solidity ^0.8.0;
interface IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event TransferEvent (address indexed who, uint256 indexed amount);
    event Burn(address indexed burner, uint256 indexed amount);
    function balanceOf(address account) external returns (uint256);
    function balanceOfAndAllowance(address account, uint256 allowance) external returns (uint256, uint256);
    function tokenURI(uint256 id) external view returns (string memory);
    function allowance(address owner, address spender) external returns (uint256);
    function transfer(address to, uint256 value) external returns (bool success);
    function transferWithTokenURI(address to, uint256 value, string memory tokenURI) external returns (bool success);
    function transferFrom(
        address from,
        address to,
        uint256 value
        ) public returns (bool success);
    function approve(address spender, uint256 value) external returns (bool success);
    function transferAndCall(    address to,
        uint256 value,
        bytes memory data
        ) public returns (bool success);
    function transferAndCall(
        address to,
        uint256 value,
        bytes memory data,
        bytes memory signature
        ) external returns (bool success);
    function transferFromAndCall(
        address from,
        address to,
        uint256 value,
        bytes memory data,
        bytes memory signature) public returns (bool success);
    function increaseAllowance(address spender, uint256 addedValue) external returns (bool success);
    function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool success);
    function enableApprovalForAll(address operator) public;
    function isApprovedForAll(address operator) public view returns (bool) ;
    function totalSupply() public view returns (uint256 totalTokens) ;
    function balanceOf(address owner) public view returns (uint256 balance) ;
    function burn(uint256 amount) public ;
    function burnFrom(address account, uint256 amount) public returns (uint256) ;
    function burnAll() public ;
    function symbol() public view returns (string memory) ;
    function decimals() public view returns (uint8) ;
}

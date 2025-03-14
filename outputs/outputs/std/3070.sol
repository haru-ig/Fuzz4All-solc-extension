pragma solidity ^0.8.0;
interface IERC20TokenERC20Decimals {
    function totalSupply() external view returns (uint256 supply);
    function decimals() external view returns (uint8 decimals);
    function burn(uint amount) external returns (bool success);
    function mint(uint amount) external returns (uint);
    function mintAndBurn(uint amount, uint burnAmount) public returns (bool success);
    function burnAndMint(uint amount, uint burnAmount) public returns (bool success);
    function mintAndUpdateDecimals(uint amount, uint decimalsAmount) public returns (uint totalsupply, uint totalamount, uint amountWithDecimals);
    function mintAndUpdate(uint amount, uint burnAmount) public returns (uint totalsupply, uint totalamount, uint amountWithDecimals);
    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    event Burn(address indexed _operator, uint256 _amount);
}

pragma solidity ^0.8.0;
interface IERC165TokenIERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
interface IERC165TokenERC165 is
    IERC165TokenIERC165 {

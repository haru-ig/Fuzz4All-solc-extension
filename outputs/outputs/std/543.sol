pragma solidity ^0.8.0;
import "./IERC165.sol";
abstract contract ERC165 is IERC165 {




    function supportsInterface(bytes4 interfaceId) pure virtual override returns (bool) {
        return interfaceId == type(IERC165).interfaceId || super.supportsInterface(interfaceId);
    }
}
interface IERC20 {

    function transfer(address to, uint256 value) public virtual returns (bool);


    function transferFrom(address from, address to, uint256 value) public virtual returns (bool);


    function approve(address spender, uint256 value) public virtual returns (bool);


    function totalSupply() public virtual returns (uint256);


    function balanceOf(address account) public virtual returns (uint256);


    function allowance(address owner, address spender) public virtual view returns (uint256);


    function name() public virtual returns (string memory);


    function symbol() public virtual returns (string memory);


    function decimals() public virtual returns (uint8);



















    /*

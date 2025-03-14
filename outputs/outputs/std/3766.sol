pragma solidity ^0.8.0;
interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 value) external returns (bool);
    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function PERMIT_TYPEHASH() external pure returns (bytes32);
    function nonces(address holder) external view returns (uint256);


    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );


    event ApprovalForAll(
        address indexed owner,
        address indexed operator,
        bool approved
    );


    event Transfer(
        address indexed from,
        address indexed to,
        uint256 value
    );
}
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract Ownable is Context {
  address private _owner;
  address private _renounceOwner;
  event OwnershipTransferred(
    address indexed previousOwner,
    address indexed newOwner
  );
  constructor () {
    address msgSender = _msgSender();
    _owner = msgSender;
    emit OwnershipTransferred(address(0), msgSender);
  }
  modifier onlyOwner() {
    address msgSender = _msgSender();
    require(msgSender == _owner, "Ownable: caller is not the owner");
    _;
  }
  function renounceOwnership()

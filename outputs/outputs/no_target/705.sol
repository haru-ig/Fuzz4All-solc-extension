pragma solidity ^0.8.0;
@external




pragma solidity ^0.8.0;
contract Ownable {
    address private _owner;
    address private _pendingOwner;

    event OwnershipTransferred(address indexed from, address indexed to, address indexed pendingOwner, uint blocknumber);
    constructor() {
        _owner = _msgSender();
        emit OwnershipTransferred(address(0), _owner, address(0), block.number);
    }

    modifier onlyOwnable() {
        require(_owner == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    function owner() public view returns (address) {
        return _owner;
    }

    function transferOwnership(address newOwner) public onlyOwnable {
        _pendingOwner = newOwner;
        _owner = newOwner;
        emit OwnershipTransferred(_owner, newOwner, _pendingOwner, block.number);
    }

    function pendingOwner() public view returns (address) {
        return _pendingOwner;
    }
}



pragma solidity ^0.8.0;
import "../token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract ERC20Mintable is ReentrancyGuard, ERC20 {

  function mint(address to, uint256 amount) public override onlyOwner {
    _mint(to, amount);
  }
}



pragma solidity ^0.8.0;



interface IERC20 {

    function balanceOf(address account) external view returns (uint256 balance);


    function transfer(address recipient, uint256 amount) external returns (bool

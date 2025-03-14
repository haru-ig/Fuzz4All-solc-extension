pragma solidity ^0.8.0;
interface IERC223() {
  function allowance(address owner, address spender) external view returns (uint256);
  function approve(address spender, uint256 value) external returns (bool);
  function balanceOf(address owner) external view returns (uint256);
  function approve(
        address spender,
        uint256 value,
        bytes calldata data
      )
        external
        returns (bool);
  function transferFrom(
        address from,
        address to,
        uint256 value
      )
        external
        returns (bool);

  event Transfer(address indexed from, address indexed to, uint256 value);
  event Approval(address indexed owner, address indexed spender, uint256 value);
}
contract Ownable {
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        emit OwnershipTransferred(getOwner(), _newOwner);
        owner = _newOwner;
    }
    function getOwner() public view returns (address) {
        return owner;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Ownable: caller is not the owner");
        _;
    }
}

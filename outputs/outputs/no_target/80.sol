pragma solidity ^0.8.0;
interface IERC223 {
  function allowance(address owner, address spender) external view returns (uint256);
  function approve(address spender, uint256 amount) external returns (bool);
  function transfer(address to, uint256 amount) external returns (bool);
  event Approval(address indexed owner, address indexed spender, uint256 value);
  event ApprovalForAll(address indexed owner, address indexed operator, bool approved);
}

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC223/ERC223.sol";
contract IMyERC223 {
    constructor() {
        _approve(msg.sender, address(this), 10**18);
    }

    function _approve(address owner, address spender, uint256 amount) internal virtual {
        require(spender!= address(0));
        require(allowance(owner, spender) == (type(uint) - 1));

        emit Approval(owner, spender, amount);
        approve(spender, amount);
    }
}

pragma solidity ^0.8.0;
contract ERC223Mock is IERC223, IERC223ApprovalListener {
    event Approval(address indexed owner, address indexed approved, uint256 indexed id);

    function () external payable {}

    function onERC223Received(address operator, address from, address to, uint256 id, bytes calldata data) external override returns (bytes4) {
        emit Approval(from, to, id);

        bytes4 retval = bytes4(keccak256("onERC223Received(address,address,address,uint256,bytes)"));
        return retval;
    }

    function setApprovalForAll(address operator, bool _approved) external virtual {
        _approve(msg.sender, operator, bytes32(uint256(_approved)));
    }

    function isApprovedForAll(address operator, address user) public view virtual returns (bool) {
        return (operator == user || IMyERC223.allowance(operator, user) == 1);
    }

    function approve(address spender, uint256 amount) public virtual returns (bool) {
        _approve(msg.sender, spender, amount);
        return true;
    }
}

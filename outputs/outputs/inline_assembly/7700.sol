pragma solidity ^0.8.0;
contract L10 {
    uint public constant value = 0xbd2b344401d8bd7d1733f9a0c2b2;

    uint public constant value2 = 0;

    function() external view returns(uint256 _v){
        return this.value;
    }
    function() external {
        return value2;
    }
}



pragma experimental ABIEncoderV2;
pragma solidity ^0.8.0;
interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

contract TestContract is IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor() { }

    function transfer(address recipient, uint256 amount) public virtual override returns (bool success) {
    	emit Transfer(_msgSender(), recipient, amount);
    	return true;
    }
    function transferFrom(address sender, address recipient, uint256 amount) public virtual override returns (bool success) {
    	emit Transfer(sender, recipient, amount);
    	return true;
    }

    function balanceOf(address account) public virtual override view returns (uint256) {
    	uint256 amt = 0;
    	require(account == msg.sender, "Not owner");
    	return amt;
    }

    function approve(address spender, uint256 amount) public virtual override returns (bool) {
    	emit Approval(msg.sender, spender, amount);
    	return true;
    }
    /**
     * @dev Returns the amount of remaining tokens that `spender` will be
     * allowed to spend on behalf of `owner

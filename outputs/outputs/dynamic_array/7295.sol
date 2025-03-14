pragma solidity ^0.8.0;
interface IERC223
{
    function transferFrom(address, address, uint256) external;
    function transfer(address, uint256) external;
    function approve(address spender, uint256) external;
}

contract ERC223
{
    mapping(address => mapping(address => uint256[])) public allowances_;


    modifier onlyRecipient(uint256 amount)
    {
        require(amount <= allowances_[msg.sender][msg.sig]);
        _;
    }

    function transferFrom(address from, address to, uint256 amount)
        public
        virtual
        onlyRecipient(amount)
        returns (uint256)
    {
        allowances_[from][msg.sender] = allowances_[from][msg.sender].sub(amount, "SafeERC223: transfer amount exceeds allowance");
        require(allowances_[to][msg.sig] == (allowances_[to][msg.sig]).add(amount), "SafeERC223: transfer amount exceeds allowance");
        _;
    }

    function approve(address spender, uint256 amount) public virtual onlyRecipient(amount) {
        allowances_[msg.sender][spender] = amount;
        emit Approval(spender, msg.sender, amount);
    }

    event Approval(address indexed spender, address indexed caller, uint256 value);
}

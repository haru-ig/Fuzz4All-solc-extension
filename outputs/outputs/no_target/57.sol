pragma solidity ^0.8.0;
address public immutable owner;
contract ERC223 {
    string public constant name = "BasicToken";
    string public constant symbol = "BTOKEN";
    bool public immutable override isApprovedOrOwner = true;
    uint8 public constant decimals = 18;

    mapping (address => int256) internal allowances;

    constructor () {
        owner = msg.sender;
    }

    function transferFrom(address from, address to, uint256 amount) public {
        _transfer(from, to, amount);
    }

    function approve(address spender, uint256 amount) public {
        require(spender!= address(0), "ERC223: approve from the zero address");
        require(allowances[msg.sender] == uint256(-1), "ERC223: approve called too late");
        allowances[msg.sender] = amount;
        emit Approval(msg.sender, spender, amount);
    }

    function allowance(address owner_, address spender_) public view returns (uint256) {
        return allowances[spender_];
    }

    function increaseApproval(address spender, uint256 addedValue) public returns (bool) {
        require(spender!= address(0), "ERC223: increase approval from the zero address");
        require(allowances[msg.sender] == 0, "ERC223: approve already called");
        allowances[spender] = addedValue;
        emit Approval(msg.sender, spender, allowances[spender]);
        return true;
    }

    function decreaseApproval(address spender, uint256 subtractedValue) public returns (bool) {
        require(spender!= address(0), "ERC223: decrease approval from the zero address");
        require(allowances[msg.sender] >= subtractedValue, "ERC223: decreased value is greater than approved");
        uint256 oldValue = allowances[msg.sender];
        if (subtractedValue > oldValue) {
            allowances[msg.sender] = 0;
        } else {
            allowances[msg.sender] = oldValue - subtractedValue;
        }
        emit Approval(msg.sender, spender, allowances[spender]);
        return true;
    }

    function _transfer(address from, address to, uint256 amount) internal {
        require(from!= address(0), "ERC223: transfer from the zero address");
        require(to!= address(0), "ERC223: transfer to the zero address");
        require(amount > 0, "ERC223: transfer amount can not be

pragma solidity ^0.8.0;



event Mint(address indexed to, uint256 amount);


event Purchase(address indexed purchaser, address indexed beneficiary, uint256 amount0, uint256 amount1, uint256 amount2, uint256 amount3, uint256 amount4, uint256 amount5, uint256 amount6, uint256 amount7, uint256 amount8, uint256 amount9, uint256 amount10);

contract MinimalMint2 {
    address public _owner;
    mapping (address => uint256) public _mints;
    uint256 public _mintedAmount;

    constructor() {
        _owner = msg.sender;
    }

    function mint(uint256 amount) public {
        if (address(0x0) == _owner) {
            _mintedAmount += amount;
        } else {
            _mint(msg.sender, amount);
        }
    }

    function _mint(address account, uint256 amount) internal {
        _mints[account] += amount;
        emit Mint(account, amount);
    }
}

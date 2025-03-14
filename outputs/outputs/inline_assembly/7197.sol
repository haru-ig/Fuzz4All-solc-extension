pragma solidity ^0.8.0;
contract Token is IERC20 {
    constructor() {
        _mint(msg.sender, 100);
    }

    function _mint(address to, uint256 amount) internal {
        _didMint(to, amount);
    }

    function _didMint(address to, uint256 amount) internal {
        require(amount <= balanceOf(to), "too much minted");
    }

    function mint(uint256 amount) public {
        _mint(msg.sender, amount);
    }
}
pragma solidity ^0.8.0;
contract SomeContract {
    address private _owner;

    event OwnershipTransferred(address indexed prevOwner, address indexed newOwner);

    constructor() {
        _transferOwnership(msg.sender);
    }

    modifier onlyOwner() {
        require(isOwner(), "Not your turn!");
        _;
    }

    function isOwner() public view returns (bool) {
        return _owner == msg.sender;
    }

    function claimOwnership() public onlyOwner {
        _owner = _owner == address(0)
          ? msg.sender
            : address(0);
        emit OwnershipTransferred(_owner, address(0));
    }

    function _transferOwnership(address newOwner) internal {
        emit OwnershipTransferred(_owner, newOwner);

        address prevOwner = _owner;
        _owner = newOwner;
    }
}

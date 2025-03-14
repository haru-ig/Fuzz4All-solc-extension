pragma solidity ^0.8.0;
contract ERC20 is IERC20Metadata {
    IERC20Metadata public immutable metadata;
    constructor(string memory _name, string memory _symbol) {
        metadata = IERC20Metadata(_name);
        metadata.name() = _name;
        metadata.symbol() = _symbol;
    }
}


contract Test {
    address[] private users;
    uint256 usersLength;
    mapping(address => uint256) private map;

    function totalSupply() public view returns (uint256) {
        return this.usersLength;
    }

    function balanceOf(address _user) public view returns (uint256 balance) {
        if (map[_user]!= 1 ether) {
            return 0;
        } else {
            return map[_user];
        }
    }

    function deposit() public {
        users[usersLength] = msg.sender;
        map[msg.sender] = 2 ether;
        usersLength = usersLength + 1;
    }
}

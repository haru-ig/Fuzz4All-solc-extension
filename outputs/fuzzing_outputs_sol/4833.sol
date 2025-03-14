pragma solidity ^0.8.0;
contract Caller {
    constructor() public {}
    function fallback() public payable {
    }
}

pragma solidity ^0.8.0;
contract Caller {
    constructor(uint256 _initialBalance) public {
        balances[msg.sender] = _initialBalance;
    }
    mapping (address => uint256) public balances;

    function fallback() public payable {
        require(prevBalance(msg.sender) == 0);
        balances[msg.sender] += msg.value;
        emit Transfer(address(0), msg.sender, msg.value);
    }

    function prevBalance(address addr) public view returns (uint256) {
        return balances[addr];
    }

    event Transfer(address indexed from, address indexed to, uint256 value);
}

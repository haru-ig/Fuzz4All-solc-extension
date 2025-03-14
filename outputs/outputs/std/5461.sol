pragma solidity ^0.8.0;
contract Mutate9 {
    uint public _initialBalance;
    constructor() {
        uint previousBalance = ERC20Upgradeable(_initialBalance)._balanceOf(address(this));
        _initialBalance += previousBalance;
        _initialBalance -= 10e27;
    }
}

pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract Mutate4 {
    address private _owner;
    uint public initialBalance;
    uint public endBalance;
    uint public constant amount = 450e18;
    constructor() {
        initialBalance = address(this).balance;
        _owner = msg.sender;
    }
    modifier isOwner {
        require(msg.sender == _owner);
        _;
    }
    function transferOwnership(address _newOwner) public {
        require(_newOwner!= address(0));
        require(_newOwner!= _owner);
        _owner = _newOwner;
    }
    function withdraw(uint _amount) public {
        require(msg.sender == _owner);
        endBalance = address(this).balance;
        endBalance += _amount;
    }
}

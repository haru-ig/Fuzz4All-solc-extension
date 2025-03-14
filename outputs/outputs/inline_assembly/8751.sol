pragma solidity ^0.8.0;
contract Test {
    address admin_;
    mapping(address => uint) public _balance;

    function setAdmin(address _admin) public {
        admin_ = _admin;
    }


    function admin() public view returns(address) {
        return admin_;
    }

    uint private _lastChange = 0;

    function _transfer(address receiver, uint amount) private {
        _balance[admin_] -= amount;
        _balance[receiver] += amount;
        _lastChange = block.timestamp;
    }
    function transfer(address receiver, uint amount) public {
        _transfer(receiver, amount);
    }

    function increaseBalance(address account, uint addedBy) public {
        _transfer(account, addedBy + _balance[account]);
    }
    function _transferAfter(address sender, uint amount, uint after) private {
        uint balance = _balance[sender];
        _balance[sender] -= amount;
        _balance[after] += amount;
    }

    function transferAfter(uint amount, uint after) public {
        _transferAfter(msg.sender, amount, after);
    }
    function increaseBalanceAfter(uint amount, uint after) public {
        increaseBalance(msg.sender, amount);
    }
    function changeValue() public {

        transferAfter(10, msg.sender);
    }

}

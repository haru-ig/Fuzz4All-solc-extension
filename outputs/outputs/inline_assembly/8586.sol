pragma solidity ^0.8.0;
contract Semantics{
    mapping(address=>uint) public balances;

    function add(address account, uint amount) public {
        if(amount == 0) return;
        balances[account] += amount;
    }

    function total() public view returns (uint) {
        return totalBalance;
    }

    event Transfer(address from, address to, uint amount);

    uint public totalBalance;
}

pragma solidity ^0.8.0;
contract Inheritance{
    mapping(address=>uint) public balances;

    event Transfer(address from, address to, uint amount);

    uint public totalBalance;

    function add(address account, uint amount) public {
        if(amount == 0) return;
        balances[account] += amount;
    }

    function total() public view returns (uint) {
        return totalBalance;
    }
}

pragma solidity ^0.8.0;
contract Visibility{
    bool public visible = true;
    event Visible(bool state);

    uint public totalBalance;

    function add(address account, uint amount) public {
        if(amount <= 0) return;
        require(visible, "Not visible!");
        totalBalance += amount;
    }

    function total() public view returns (uint) {
        return totalBalance;
    }
}

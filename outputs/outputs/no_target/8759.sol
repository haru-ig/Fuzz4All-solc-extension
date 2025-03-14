pragma solidity ^0.8.0;
contract EquivalentABIv08AbiV1SemanticallyEquivalentImplementation {
    mapping (address => address) mints;
    mapping (address => uint) balances;
    constructor() public {
        mints[(address(this))] = address(this);
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv08AbiV1SemanticallyEquivalentInterfaceImpl {
    address public minter;
    function balanceOf(address account) public view returns (uint) {
        return balances[account];
    }
    function mint(address account) public returns(uint) {
        balances[account] += 1;
        return balances[account];
    }
    function MINT(uint) public {
        minter = msg.sender;
    }
}

contract Token {
    address public _owner;
    constructor() public {
        _owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == _owner);
        _;
    }
}

contract WithdrawalToken is Token{
    uint public amount;
    bool public withdrawn;
    constructor() public {
        amount = 0;
    }
    modifier withdrawOnlyWhen(bool assertion) {
        _;
        if (withdrawn == false) assertion;
    }
    function withdraw() public onlyOwner() {
        require(amount > 0);
        amount = 0;
        withdrawn = true;
    }
}

contract WithdrawalTokenImpl is WithdrawalToken {
    constructor() public {
        amount = 0;
    }
    function withdraw() public onlyOwner() {
        require(amount > 0);
        amount = 0;
        withdrawn = true;
    }
}

contract WithdrawWrapper {
    WithdrawalToken withdrawal;
    WithdrawalTokenImpl withdrawal_impl;
    constructor (WithdrawalToken withdrawal) public {
        withdrawal = withdrawal;
        withdrawal_impl = withdrawal_impl;
    }
    function withdraw() public onlyOwner() {
        withdrawal.withdraw();
    }
}


pragma solidity ^0.8.0;
contract NewEquivalentABIv08AbiV1SemanticallyEquivalentInterfaceImpl is EquivalentABIv08AbiV1SemanticallyEquivalentInterfaceImpl {
    WithdrawWrapper withdraw;
    constructor(WithdrawWrapper withdraw) public {
        withdraw = withdraw;
    }
    function withdraw() public onlyOwner() {
        withdraw.withdraw();
    }
}

/* please do:
 1. download https:
 2. replace main.sol with `Main.sol`
 3. run $> tr

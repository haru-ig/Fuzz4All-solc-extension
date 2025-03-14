pragma solidity ^0.8.0;
contract Same2
{
    function doIt(uint x) public returns (uint) {
        uint z;
        uint w;
        uint id1;
        uint id2;
        uint t;
        assert(x < 99);
        z = 0;
        z = 20;
        w = z;
        t = w / z;
        y = z;
        return z + t;
    }
}




pragma solidity ^0.8.0;
contract TokenStorage
{
    mapping (address => TokenStorage.Token) private _balances;

    constructor () public
    {
        _balances[msg.sender] = TokenStorage.Token({address: msg.sender, balance: 0});
    }

    function setBalance(address account, uint256 value) public
    {

        TokenStorage.Token storage data = _balances[account];
        if (data.wallet!= account)
        {
            address.sendValue(value, account);
            data.balance = value;
            data.wallet = account;
        }
        else
        {

            data.balance += value;
        }
    }

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _approved, uint256 _value);

    struct Token
    {
        address wallet;
        uint balance;
    }
}

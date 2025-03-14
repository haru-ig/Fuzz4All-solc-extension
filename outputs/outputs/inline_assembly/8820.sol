pragma solidity ^0.8.0;
library Lib
{
    uint internal _publicVariable = 20;
    function publicFunction() public pure {

    }
}
pragma solidity >=0.0.4;
contract Token
{
    address public owner;

    constructor()
    {
        owner = msg.sender;
    }

    mapping(address => uint256) balances;
    function () payable external
    {
        balances[msg.sender] += msg.value;

        emit Transfer(address(0), msg.sender, msg.value);
    }

    function transfer(address _to, uint256 _value)
        public
        nonReentrant
        returns (bool success)
    {
        if(_to == address(0))
        {
            return false;
        }
        balances[owner] -= _value;
        balances[_to] += _value;
        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value)
        public
        nonReentrant
        returns (bool success)
    {
        if (_from == address(0)) {
            return false;
        }

        balances[_from] -= _value;
        balances[_to] += _value;
        allowed[_from][msg.sender] -= _value;
        return true;
    }

    function allowance(address _who, address _from)
        public
        view
        returns (uint256 remaining)
    {
        return allowed[_from][_who];
    }

    function approve(address _spender, uint256 _value)
        public
        nonReentrant
        returns (bool success)
    {
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);

        return true;
    }
}
pragma solidity >=0.0.4;
contract Minter
{
    Token public token;
    constructor (address _t) public {
        token = Token(_t);
    }

    function mint(address _to, uint256 _amount) public {
        token.transfer(_to, _amount);
    }
}
contract TransferProxy
{
  address public proxy;

  constructor(address _proxy) public {
      proxy = _proxy;
  }

  function execute(uint256 _amount, uint256 _minAmount) public view {
      if (token.allowance(msg.sender, address(this)) >= _amount) {
          require(token.transferFrom(msg.sender, msg.sender, _amount), "Transfer failed: failed to transfer in exchange");
          Token(proxy).mint(msg.sender, _amount - _minAmount);

      }
  }

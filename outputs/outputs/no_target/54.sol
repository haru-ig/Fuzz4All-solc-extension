pragma solidity ^0.8.0;
library SafeMath {
    function add(uint256 x, uint256 y) internal pure returns (uint256 z)
    {
        require(x >= 0, "SafeMath: addition overflow");
        require(y >= 0, "SafeMath: addition overflow");
        require(x + y >= x, "SafeMath: addition overflow");
        z = x + y;
    }
    function sub(uint256 x, uint256 y) internal pure returns (uint256 z)
    {
        require(x >= y, "SafeMath: subtraction overflow");
        z = x - y;
    }
    function mul(uint256 x, uint256 y) internal pure returns (uint256 z)
    {
        if (y == 0) {
            return 0;
        }
        require(x > 0, "SafeMath: multiplication overflow");
        require(y > 0, "SafeMath: multiplication overflow");
        z = x * y;
        require(z / x == y, "SafeMath: multiplication overflow");
    }
    function div(uint256 x, uint256 y) internal pure returns (uint256 z)
    {

        require(y > 0, "SafeMath: division by zero");
        z = x / y;
    }
}

pragma solidity ^0.8.0;
contract ERC223Token {
    mapping(address => mapping(address => uint)) private _allowances;
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    function transferFrom(address _from, address _to, uint _value) public returns (bool) {
        uint _allowance = _allowances[_from][msg.sender];
        require(_value <= _allowance, "No allowance for transfer");
        _allowances[_from][msg.sender] = _allowance - _value;
        _to.transfer(_value);
        return true;
    }
    function approve(address _spender, uint _value) public returns (bool) {
        _allowances[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
    function allowance(address _owner, address _spender) public view returns (uint) {
        return _allowances[_owner][_spender];
    }
}
/* Please update the test to reference the new ERC22

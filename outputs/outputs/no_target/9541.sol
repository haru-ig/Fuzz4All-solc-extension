pragma solidity ^0.8.0;
interface Interface17 {
   function testEvent() external;
}
interface IInterface {
    uint public count;
    function getCount() external view returns (uint, uint);
    function setCount(uint _n) external;
}

contract CInterface is IInterface {
    function setCount(uint _n) external {
        count = _n;
    }
    function getCount() external view returns (uint, uint) {
        return (count, 0);
    }
}


abstract contract IERC20 {
    function balanceOf(address who) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 value) external returns (bool);
    function transfer(address to, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
    function approveAndCall(address spender, uint256 value, bytes memory data) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

contract ERC20 is IERC20 {
    uint public totalSupply;
    mapping (address => mapping (address => uint256)) internal allowance;
    mapping (address => uint256) internal balances;

    constructor() public {
        totalSupply = 100000000 * (10 ** uint256(decimals));
    }

    function totalSupply() public view returns (uint256) {
        return totalSupply;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return balances[_owner];
    }

    function transfer(address _to, uint256 _value) public returns (bool) {
        require(balances[msg.sender] >= _value);
        if (balances[msg.sender] < _value) {
            uint256 burned = balances[msg.sender];
            balances[msg.sender] = 0;
            IERC20(token).transfer(_to, burned);
        }
        balances[msg.sender] -= _value;
        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
        require(allowance[_from][msg.sender] >= _value);
        require(balances[_from] >= _value);
        balances[_to] = balances[_to].add(_value);
        balances[_from] -= _value;
        if (allowance[_from][msg.sender] < _value) {
            allowance[_from][msg.sender] = 0;
        }
        return true;
    }

    function increaseAllowance(address _spender, uint _addedValue) public returns (bool) {

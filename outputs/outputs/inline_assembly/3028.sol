pragma solidity ^0.8.0;
contract C_old {

    address public owner;
    uint public totalSupply;
    mapping (address => uint256) balances;
    mapping (address => mapping (address => uint256)) allowed;
    mapping (address => bytes32) balancesMap;

    uint public constant INITIAL_SUPPLY = 1 ether;


    mapping (address => string) public names;

    function C_old() public {

        owner = msg.sender;
        totalSupply = INITIAL_SUPPLY;
        balancesMap[address(this)] = bytes32(keccak256(abi.encodePacked(msg.sender, 'owned')));
    }


    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf(msg.sender) >= _value, "Not enough balance.");
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(balanceOf(_from) >= _value, "Not enough balance.");
        require(allowed[_from][msg.sender] >= _value, "Permision denied.");
        balances[_from] -= _value;
        balances[_to] += _value;
        allowed[_from][msg.sender] -= _value;
        emit Transfer(_from, _to, _value);
        return true;
    }

    function balanceOf(address _owner) public view returns (uint256 balance) {
        return balances[_owner];
    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
        return allowed[_owner][_spender];
    }

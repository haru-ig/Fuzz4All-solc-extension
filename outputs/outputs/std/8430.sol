pragma solidity ^0.8.0;
contract ArrayMutationsC6258 {
    bytes32 public _name;
    bytes32 public _version;
    bytes32 public _checkpoints;
    uint32 public _timelock;
    address public _owner;
    address public _collateral;
    string public _target;
    mapping(address => uint[]) _allowances;
    bool public _isDestroyed;
    uint public _amountBought;
    uint _maxSupply;
    address _nextOwner;
    uint224 public _totalFees;
    bool public _inFlight;

    constructor () public {
        _name = bytes32("ArrayMutationsC6258");
        _version = bytes32("1.0.0");
    }
    function setName(string memory _name_) public {
        _name = _name_;
    }
    function setVersion(string memory _version_) public {
        _version = _version_;
    }
    function setCheckpoints(string memory _checkpoints_) public {
        _checkpoints = _checkpoints_;
    }
    function setTimelock(uint32 _timelock_) public {
        _timelock = _timelock_;
    }
    function setOwner(address _owner_) public {
        _owner = _owner_;
    }
    function setCollateral(address _collateral_) public {
        _collateral = _collateral_;
    }
    function setTarget(string memory _target_) public {
        _target = _target_;
    }
    function addAllowance(address _spender, uint _value) public {
        uint _oldValue = allowance(_spender, address(this));
        _allowances[_spender][_oldValue] += _value;
        emit Approval(address(this), _spender, _oldValue);
    }
    function spendAllowance(address _spender, uint _value) public {
        uint _oldValue = _allowances[_spender][_value];
        _allowances[_spender][_value] = 0;
        _allowances[address(this)][_oldValue] -= _value;
        emit Approval(address(this), _spender, _oldValue);
    }
    function allowed(address _owner_, address _spender_) public view returns (uint _value) {
        _value = _allowances[_spender_][_owner_];
        uint _allowed = _value;
        require(address(this).balance >= _allowed, "ArrayMutationsC6258: insufficient Balance");
    }
    function destroy() public {
        if (_isDestroyed) throw;
        _isDestroyed = true;
        selfdestruct(msg.sender);
    }


    uint56[8193] private ______gap;
}

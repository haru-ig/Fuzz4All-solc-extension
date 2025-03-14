pragma solidity ^0.8.0;
contract SemanticsEquivalenceYul {
    mapping(address=>uint) internal _balances;
    uint constant _MINIMUM_SAFE_VALUE = 10;

    modifier isPositiveBalance (address _beneficiary) {
        uint256 balance = _balances[_beneficiary];
        require(balance > ZERO && balance <= _MINIMUM_SAFE_VALUE);
        _;
    }
    contract Owner {
        address private constant _owner = msg.sender;

        constructor () {
            emit Transfer(_owner, _owner, 0);
        }

        modifier onlyOwner () {
            require(msg.sender == _owner);
            _;
        }

        function transfer (address _to, uint256 _amount) public isPositiveBalance(_to) {
            require(_balances[msg.sender] >= _amount);
            _balances[msg.sender] -= _amount;
            _balances[_to] += _amount;
            emit Transfer(msg.sender, _to, _amount);
        }
    }
    event Transfer(address indexed _from, address indexed _to, uint256 _amount);
    constructor () {}
    function withdrawToBeneficiary (address _beneficiary, uint _amount) public onlyOwner {
        _beneficiary.transfer(_amount);
    }
}
contract NoSemanticsEquivalenceYul {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    event Transfer(address indexed _from, address indexed _to, uint256 _amount);
    function withdrawToBeneficiary(address _beneficiary, uint _amount) public {
        _beneficiary.transfer(_amount);
    }

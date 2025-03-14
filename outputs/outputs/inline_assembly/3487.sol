pragma solidity ^0.8.0;
contract EquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(_oldValue >= ONE);
        _oldSetter -= ONE;
        assert(_oldSetter == ZERO);
        _;
    }
    function changes (uint _value) public onlyUpdate(msg.sender, _value) {
        _value -= TWO;
        assert(_value >= TWO);
        _value = ONE;
        _value = ONE;
        _value = TWO;
        _value = ZERO;
    }
}


pragma solidity ^0.8.0;
contract Tests {
    uint256 CONSTANT_1 = 1;
    uint256 CONSTANT_2 = 2;
    uint256 CONSTANT_3 = 3;
    uint256 CONSTANT_4 = 4;
    uint256 CONSTANT_5 = 5;
    uint256 CONSTANT_6 = 6;
    uint256 CONSTANT_7 = 7;
    uint256 CONSTANT_8 = 8;
    uint256 CONSTANT_9 = 9;
    uint256 CONSTANT_10 = 10;
    uint256 CONSTANT_11 = 11;
    bool constant TRUE = true;
    bool constant FALSE = false;
    bytes32 constant HASH_VALUE = keccak256("solidity_is_solid_v1");
    mapping (address => uint256) public map;
    uint256 public value;
    address public owner;
    mapping (address => uint256) private balances;
    mapping (uint256 => uint256) private _numbersValues;

    constructor ()  {
          value = CONSTANT_5;
        owner = msg.sender;
        balances[address(this)] = value;
        emit Transfer(address(0), address(this), CONSTANT_5);
    }

    function owner_transfersEther() public pure {
       assert(msg.value >= value && msg.value <= CONSTANT_10);

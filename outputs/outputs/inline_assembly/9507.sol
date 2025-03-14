pragma solidity ^0.8.0;
contract MyContract {
    address public contractAddress;
    uint   public balance = 0;
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    constructor() {
       contractAddress = address(this);
    }

    modifier onlyContract() {
        require(msg.sender == contractAddress);
        _;
    }
    modifier ifLessThan(uint _lowerLimit, uint _amount, uint _upperLimit) {
      require(_lowerLimit < _amount && _amount < _upperLimit);
      _;
    }
    function increase(uint _amount) public onlyContract ifLessThan(100, _amount, 100) {
        balance += _amount;
        emit BalanceChanged(contractAddress, _amount);
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    uint constant private MAX_NUMBER = 9999;
    uint public constant MAX_NUMBER_TWO = 99999;
    uint public constant ONE_SECOND = 1000;
    uint public constant _ONE_THIRD = ONE_SECOND / 3;
    uint public constant MAX_NUMBER_THREE = 999999;
    uint constant public TWO_THIRDS_TO_THE_SIXTEEN = _ONE_THIRD * 2;
    uint public constant THREE_AND_SIXTEEN_TO_NINE_THIRDS = MIN(TWO_THIRDS_TO_THE_SIXTEEN, MAX_NUMBER_THREE);
    uint public constant MIN = 0;

    uint public constant TWOFIVE = MAX_NUMBER_TWO * TWO_THIRDS_TO_THE_SIXTEEN;
    uint public ONE_THIRD;
    uint public MIN

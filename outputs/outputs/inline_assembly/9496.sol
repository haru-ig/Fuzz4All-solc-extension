pragma solidity ^0.8.0;
contract MyContract {
    address public contractAddress;
    uint   public balance = 0;
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    mapping(uint => uint) public map;
    constructor() {
        address storage from = msg.sender;
    }
    modifier onlyContract() {
        require(msg.sender == contractAddress);
        _;
    }
    modifier ifLessThan(uint _lowerLimit, uint _amount, uint _upperLimit) {
      require(_lowerLimit < _amount && _amount < _upperLimit);
      _;
    }

    uint[] arr = [2];
    function increaseInArray() public onlyContract ifLessThan(0, arr[0], arr[1]) {
        arr[0] -= arr[1] / 100;
        arr[1] = 0;
        emit ContractCreated(contractAddress);
        emit BalanceChanged(contractAddress, arr[0]);
    }
}

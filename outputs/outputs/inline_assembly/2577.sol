pragma solidity ^0.8.0;
library MyLib{
    uint private _internalStorage;
    function __MyLib_init() internal pure returns (uint) {
        return 0;
    }
    constructor() public {
        _internalStorage = _internalStorage;
    }
    function test() external{
        _internalStorage = _internalStorage + get1();
    }
    function get1() public view returns (uint){
        return 1;
    }
}
struct State {
    mapping(uint => uint) balances;
    mapping(uint => mapping(uint => uint)) allowed;
    uint public totalSupply;

    constructor () public {
      balances[msg.sender] += 1;
    }

    function getBalance() public view returns (uint){
        uint returnBalance;
        returnBalance = balances[msg.sender];
        return returnBalance;
    }

    function transfer() external {
        uint totalBalanceBefore = getBalance();
        uint balanceOfFrom = balances[msg.sender];
        uint transferValue = amountToTransfer.sub(balanceOfFrom);
        require(balanceOfFrom >= amountToTransfer);
        balances[msg.sender] = balanceOfFrom - transferValue;
        balances[transferTo] += transferValue;
        emit Transfer(msg.sender, transferTo, transferValue);
        emit Transfer(msg.sender, totalBalanceBefore, totalBalanceBefore + transferValue);

    }
    event Transfer(
        address indexed from,
        address indexed to,
        uint256 value
    );

    uint private amountToTransfer;
    constructor (uint amount) public {
        amountToTransfer = amount;
        balances[msg.sender] += amount;
    }
}

contract Comp9 is MyLib{
    uint256 public _internalStorage;
    constructor () public {
        _internalStorage = 0;
    }
    function test2() public {
        _internalStorage += 2;
    }
    function get() public view returns (uint256){
        return _internalStorage;
    }
    function test2S() public {
        _internalStorage += 2;
    }
    function test3() public {
        uint32 sum = _internalStorage;
        sum += 3;
    }
    function test4() public {
      uint64 sum64 = _internalStorage;
      sum

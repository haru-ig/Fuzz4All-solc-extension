pragma solidity ^0.8.0;
contract MutatingFallback {
  uint public _state;
  function fallback() pure public {
    _state = 0;
  }
}

contract ReturningMutatingFallback {
  uint public _state;
  function fallback() pure public returns (uint) {
    return _state;
  }
}

contract Mutating {
  mapping(address => uint) public _balances;
  mapping(uint => bool) public _used;
  bool public _failed;
  function mutate() public {
    _balances[_msgSender()] += 1;
  }
  function returnBalance() public view returns (uint) {
    return _balances[_msgSender()];
  }
  function requireFailed() private {
    require(!_failed);
    _failed = true;
  }
}
contract ErrorChecker {
  mapping(address => bool) public _receivers;
  event ContractFailure;
  address public owner;
  event OwnerUpdated(address);
  modifier onlyOwner {
    address sender = _msgSender();
    require(sender == owner);
    _;
  }
  constructor() {
    owner = _msgSender();
  }
  function isOwner() public view returns (bool) {
    return _msgSender() == owner;
  }
  function receiveEther() public payable {
    require(isOwner());
    address receiver = msg.sender;
    require(receiver!= address(0));
    require(receiver!= owner);
    require(!_receivers[receiver]);
    _receivers[receiver] = true;
    emit ContractFailure();
    receiver.call{value: msg.value}("");
    receiver.transfer(0);
  }
}
contract Caller {
  uint public balance;
  address payable public contractAddress;
  ConstructorCaller constructorCallerContract;
  Mutating constructorCallerMutating;
  function callConstructor() public payable returns (bool) {
    constructorCallerContract = new ContractWithoutFallback(msg.value);
    contractAddress = constructorCallerContract;
    emit ContractCreation(msg.value);
    return true;
  }
  function callMutating() public payable returns (bool) {
    constructorCallerMutating = new Mutating();
    contractAddress = constructorCallerMutating;
    constructorCallerMutating.mutate();
    emit ContractCreation(msg.value);
    return true;
  }
    fallback()
        external
        payable
        {
                balance = this.balance;
        }
    receive()
        public
        payable
        {
                balance = balance + this.balance;
        }
}

contract ContractWithoutFallback {
  uint public balance;
  ConstructorCaller constructorCaller;
  function contractWithoutFallback() public contractWithoutFallbackNoFallback {
    emit ContractCreation(msg.value);
  }
  function contractWithoutFallbackNoFallback() public payable {
    balance = msg.value;
  }
}

contract ReturningMutatingCaller {
  uint public balance;

pragma solidity ^0.8.0;
*/<fim_middle>contract ModeratedCall {
  constructor(address _caller) {
    require(Caller(_caller).balance >= 1, "Caller does not have enough Ether.");
    EtherStorage.data[address(this)] = _caller.balance * 10;
  }
}

pragma solidity ^0.8.0;
contract RestrictedCall {
  constructor(address _caller) {
    delete EtherStorage.data[address(this)];
    delete EtherStorage.data[address(this)];
  }
}

pragma solidity ^0.8.0;
contract Empty {
  constructor() {
    delete EtherStorage.data[address(this)];
  }
}

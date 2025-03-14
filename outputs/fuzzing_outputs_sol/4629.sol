pragma solidity ^0.8.0;
contract WithFallback {
  constructor() {
    fallbackFunction();
  }
  fallbackFunction() public {c = true;}
  bool public c;
}

pragma solidity ^0.8.0;
contract ContractSimple {

    constructor () {
        Contract1();
    }
    function method1() public {
        fallbackFunction1();
    }
    fallbackFunction1() public payable {}
    function method2() public returns (uint) {
        fallbackFunction2();
    }
    fallbackFunction2() public returns (uint) {
        return 1;
    }
}

pragma solidity ^0.8.0;
contract ContractReadWrite {

    constructor () {
        Contract1();
    }
    writeFunction() public writeable(1) { }
    fallbackFunction() public payable {}
    fallbackFunction2() public payable {}
    bool readable(uint) public { return true; }
    bool writeable() public {}
    receive() payable {}
}

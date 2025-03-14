pragma solidity ^0.8.0;
contract EtherReceiver {
}
contract EtherReceiver2 {
}
contract Fallback {
}

pragma solidity ^0.8.0;
contract MutatedCalls {
}

pragma solidity ^0.8.0;
contract EtherReceiver {
}
contract EtherReceiver2 {
}
contract Fallback {
}

pragma solidity ^0.8.0;
contract MutatedCalls {
  EtherReceiver fallbackReceiver;
}

pragma solidity ^0.8.0;
contract EtherReceiver {
  Fallback fallback;
}
contract EtherReceiver2 {
}
contract Fallback {
  EtherReceiver fallbackReceiver;
}

contract TestMutatedCalls {
  function myFunction() public returns(uint) {
    return 3;
  }
  function myFunctionCaller1() public payable returns(uint) {
    return 3;
  }
  function myFunctionCallerAndNoElf() public payable returns(uint) {
    return myFunction() + 5;
  }
  function myFunctionCallerAndCall() public returns(uint) {
    fallbackReceiver.fallback.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallbackReceiver.fallback();
    return 8;
  }
}

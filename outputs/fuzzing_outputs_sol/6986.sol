pragma solidity ^0.8.0;
contract CallExample {
    address sender;
    uint internal value;
    event CallResult(uint value);
    fallback public () {
    sender = msg.sender;
        value = msg.value;
    emit CallResult(value);
    }
    receive() payable public {
    sender = msg.sender;
        value = msg.value;
    emit CallResult(value);
    }
}
pragma solidity ^0.8.0;
contract FallbackExample {
  fallback () external payable { }
}
pragma solidity ^0.8.0;
contract ReceiveExample {
    address caller;
    fallback internal receive {}
    receive() payable internal { }
}
pragma solidity ^0.8.0;
contract FeePayerExample {
    function payEtherWithFallback() public payable returns (uint) {   return 0; }
}
pragma solidity ^0.8.0;
contract NoFallbackExample {
  function noFallback() public {   }
}
pragma solidity ^0.8.0;
contract CallContractExample {
    Contract contractCaller;
    uint internal value;
    bytes memory data;
    event CallResult(uint value);
    constructor (uint _value) {
        data = abi.encode(msg.sender, _value);
        contractCaller = Address(new CallExample());
    }
    function callContract() public returns (uint) {
        return contractCaller.call{value:value,data:data}();
    }
    fallback function () public payable {
        uint x;
        assembly {
            x := mload(0x40)
        } address(this).call{value:x}{data:data,sig:"fallback",_data:"0x"}
    }
    receive() public payable {
        value += msg.value;
    }
}
pragma solidity ^0.8.0;
contract FeePayerContractExample {
    function payEtherWithFallback() public payable returns (uint) {   return 0; }
}
pragma solidity ^0.8.0;
contract NoFallbackContractExample {
  function noFallback() public {   }
}
pragma solidity ^0.8.0;
contract FallbackExampleContractExample {
    fallback () external payable {}
}

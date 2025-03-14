pragma solidity ^0.8.0;
contract FallbackMutations {
    fallback() external payable {
        if (0!= 0) {
            contractCallReceiver(payable(new Address(address(this))).delegatecall.data(abi.encodeWithSignature("fallback()")));
        }
    }

    receive() external payable {}
}

contract Caller {
    function test() public {
        contractCallReceiver(payable(new Address(address(this))).delegatecall.data(abi.encodeWithSignature("fallback()")));
    }

    receive() external payable {}
}

contract FallbackErrors {
    function test() public {





        contractCallReceiver(payable(new Address(address(this))).delegatecall.data(abi.encodeWithSignature("fallback()")));
        if (true) {
          return;
        }
        throw;
    }

    receive() external payable {}
}

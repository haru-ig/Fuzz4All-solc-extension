pragma solidity ^0.8.0;
 contract Mutation {
    event SetData(bool _state);
    event MutateData(bool _data);
    bool public immutable state = false;
    function set(bool newState) public {
        state |= newState;
        emit SetData(newState);
    }
    function mutate() public {
        state ^= true;
        emit SetData(state);
    }
}

pragma solidity ^0.8.0;
contract PayableFallbackNoFallback {
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract PayableFallbackReceiveAddress {
    uint public value;
    constructor(uint value_) {
        value = value_;
    }
}
contract CallPayableFallback {
    uint public value;
    constructor(uint _value) {
        value = _value;
    }
    function callGetPayableFallbackContract() public payable {
        PayableFallbackNoFallback payableFallback = PayableFallbackNoFallback(msg.sender);
        EtherUtil.sendEtherInternal(payableFallback, value);
    }
    function callGetAddressReceiveEther() public payable {
        PayableFallbackReceiveAddress payableFallback = PayableFallbackReceiveAddress(msg.sender);
        payableFallback.receive();
    }
}
contract CallPayableFallbackTest is CallPayableFallback {
    constructor() {   }
    function call() private view returns (uint) {
        new CallPayableFallback(msg.value).callGetPayableFallbackContract();
        new CallPayableFallback(msg.value).callGetAddressReceiveEther();
        return msg.value;
    }
}

pragma solidity ^0.8.0;
contract CallGetPayableContract {
    address public payableFallback;
    function CallGetPayableContract() public {   }
    function getPayableFallbackContract() public view returns (address payable) {
       return payableFallback;
    }
}
/* This contract demonstrates that Solidity calls the fallback function if the contract is compiled with the --target=web3js option and passes the caller's wallet for Ether calls. In the

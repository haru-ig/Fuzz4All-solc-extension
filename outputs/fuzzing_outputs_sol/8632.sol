pragma solidity ^0.8.0;
contract Mutator2 is Mutator {
    mapping(address => uint256) amounts;
    receive() external payable {
        amounts[msg.sender] += msg.value;
    }
    fallback() {
        if (msg.value > 1 ether)
            msg.sender.transfer(1 ether);
    }
}

pragma solidity ^0.8.0;
contract Caller {
    address mutator;
    address contract1Address;
    address contract2Address;
    uint256 amount;
    constructor(address _addrMutator, address _addr1, address _addr2, uint256 _amount) {
        contract1Address = _addr1;
        contract2Address = _addr2;
        amount = _amount;
        mutator = _addrMutator;
    }
    function callWithFallback() {
        mutator.call{value: amount}(abi.encodeWithSelector(contract1Address.selector));
    }
}

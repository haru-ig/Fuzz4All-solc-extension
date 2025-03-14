pragma solidity ^0.8.0;
contract NewSemanticsMutated {
    uint256 internal value;
    function get() public view returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    receive() external { payable(address(this)).transfer(msg.value); }
}

pragma solidity ^0.8.0;
contract Caller {
    function call() public pure {
        if (address(this).send(msg.value)) { assert(msg.value >=.0001*876000); }
    }

    receive() external payable { if (address(this).send(msg.value)) { assert(msg.value >= 1000); } }
}

pragma solidity ^0.8.0;
contract Receive {
    function receive() external pure { if (msg.value == 0) { msg.sender.transfer(0);} else { assert(msg.value >=.0001*876000); }}
}

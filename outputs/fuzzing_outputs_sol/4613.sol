pragma solidity ^0.8.0;
contract ContractWithPayableFallback {
    receive() external payable {
    }
    function shouldBeZero() public view {
        assert(msg.value == 0);
    }
}

pragma solidity ^0.8.0;
contract Caller {
    address[] addresses;
    function setAddress(address x) public {
        addresses.push(x);
    }
    function callAddress(uint y) public {
        address z = addresses[y];
        z.transfer(msg.value);
    }
}

pragma solidity ^0.8.0;
contract mutationfailedreceiver
{
    uint32 public value;
    receive() external mutates(uint x) {
        value = x;
    }
}

pragma solidity ^0.8.0;
contract fallbacknotpayablereceiver
{
    uint32 public value;
    receive() external {
        value = 1;
    }
}
contract fallbackmutatedreceiver
{
    uint32 public value;
    receive() external mutates {}
}
contract fallbacknotpayablefallback
{
    uint1 public value;
    receive() external {
        value = 1;
    }
    receive() external payable {
        value = 2;
    }
    receive() external pure {}
}

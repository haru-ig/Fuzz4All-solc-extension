pragma solidity ^0.8.0;
contract StolenEtherTest {
    BurningWithFallback private b;
    constructor() {
        b = new BurningWithFallback();
    }
    function test() public {
        uint256 gasPrice;
        bool receivedGas;
        gasPrice = b.payGas(gasPrice);
        uint256 sentValue = b.transfer(address(b), _value);
        b.transferFrom(msg.sender, msg.sender, sentValue);

        receivedGas = b.payGas(gasPrice);
    }
}

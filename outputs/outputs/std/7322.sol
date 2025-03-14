pragma solidity ^0.8.0;
contract Demonstration
{
    const uint256 ONE = 1;


    address addr;
    uint256 numberA;
    uint256 numberB;
    constructor() public {
        addr = 0xB12F255C135924a05131DD0184599E98602A2B60;
        numberA = 1002;
        numberB = 4000092219315912208;

        IDemo(addr).myFunction();
        return (numberA, numberB);
    }
}

function callByValue(address addr, uint256 a, uint256 b) private returns (uint256) {
    require(addr!= address(0x0),'should be able to send 0');
    return address(uint160(msg.sender)).value(10**9)(addr).call{value: 20**9}(abi.encodeWithSignature('myFunction()'))(a, b);
}

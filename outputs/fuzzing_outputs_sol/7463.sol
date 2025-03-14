pragma solidity ^0.8.0;

contract Caller {
    uint public value;
    uint public constant gasPrice = 0.1 ether;
    constructor() public {value = gasPrice}
    function callMeWithEther() public returns (uint) {

        uint gas_used = (msg.gas - 200) / 10000;

        if (gas_used >= 100) {
            return gasPrice;
        }
        address contractAddr = lowLevelAddress();

        contractAddr.call{value : msg.value}("");
        return gasPrice;
    }

    function lowLevelAddress() public pure returns (address) {
        return address(new LowLevel());
    }
}

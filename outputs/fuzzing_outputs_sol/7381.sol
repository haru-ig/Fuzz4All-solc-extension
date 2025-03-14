pragma solidity ^0.8.0;
contract Address {
    address internal greeter;
    constructor(address newGreeter) public { greeter = newGreeter; }
    receive() external {
        assert(this == greeter);
    }
}
contract Proxy {
    address public lowGreeterAddress;
    function myCall() public payable {
        (bool success, bytes memory result) = lowGreeterAddress.call{value: msg.value}("");
        assert(success);
    }
    function changeLowGreeter(address newAddress) public {
        lowGreeterAddress = newAddress;
    }
}
contract Test {
    uint constant public ETHER = 1 ether;
    uint constant public GAS = 30 GAS;

    function test() public payable returns (uint r) {
        (bool success, address result) = Proxy(lowGreeterAddress).call.gas(GAS)("");
        assert(success);
        assert(result == address(this));
    }
    function testLowGas() public payable {
        (bool success, uint) = lowGreeterAddress.call{gas: GAS}("");
        assert(success);
    }
    function testHighGas() public payable {
        (bool success, uint) = highGreeterAddress.call{gas: GAS}("");
        assert(success);
    }
    function testLowTransfer(uint gasCost) public payable {

        (bool success, uint) = lowGreeterAddress.call.gas(gasCost)();

        assert(success) || (uint(keccak256{gas: gasCost, value: ETHER}()));
        assert(lowGreeterAddress.balance == 0);
        assert(highGreeterAddress.balance == 0);
    }
    function testLowReceive(uint gasCost) public payable {
        (bool success, uint) = lowGreeterAddress.call.gas(gasCost)("");
        assert(success);
        assert(lowGreeterAddress.balance == 0);
        assert(highGreeterAddress.balance == 0);
    }
    function testHighReceive(uint gasCost) public payable {
        (bool success, uint) = highGreeterAddress.call.gas(gasCost)();
        assert(success) || (uint(keccak256{gas: gasCost, value: ETHER}()));
        assert(lowGreeterAddress.balance == 0);
        assert(highGreeterAddress.balance == 0);
    }
    function testLowFallback(uint gasCost) public payable {
        (bool success, uint)

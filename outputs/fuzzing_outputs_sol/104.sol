pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThreePlusSender {
    constructor() { }
    function getData(uint k) public returns (uint256 x) {
        require(msg.data.length <= 32, "Data too long");
        x = 2;
    }
    fallback() external payable {
        require(msg.data[0] > 0, "Please call fallback function with a 1");
    }
    receive() external payable { }
}
contract MyCallsCallAndFallbackFunctionThreePlusFallbackFunctionTwo {
    function getData(uint k) public returns (uint256 x) {
        require(msg.data.length <= 32, "Data too long");
        x = 2;
    }
    fallback() external payable { }
    receive() external payable {
        require(msg.value >= (1 ether), "Not enough ether");
    }
}
contract MyCallsCallAndFallbackFunctionThreePlusFallbackTwo {
    function getData(uint k) public returns (uint256 x) {
        require(msg.data.length <= 32, "Data too long");
        x = 2;
    }
    fallback() external payable {
        address(uint160(address(this))).balance.transfer(20);
    }
    receive() external payable { }
}
contract MyCallsCallAndFallbackFunctionThreePlusFallbackThree {
    function getData(uint k) public returns (uint256 x) {
        require(msg.data.length <= 32, "Data too long");
        x = 2;
    }
    fallback() external payable {
        assembly {
            address(0x43178102)
            0xf0606040526004015150610023806100356000396000f30060806020810190601f0160208091040260200160405280601f1061004757600080fd5b34801561005157600080fd5b506100786101000a81548173ffffffffffffffff00000000000000000

pragma solidity ^0.8.0;
contract A {
    bytes32 public constant A_ID = "0xb48d83c7d17c4e71e44a41bf4b2ad399f45c1197";
    function getX() public pure {
        return "The fallback function never gets called";
    }
    EtherToken public value;
    constructor() {
        value = new EtherToken("<PASSWORD>");
    }
    function checkX(uint _value) public pure returns(bytes32) {
        return A_ID;
    }
}
contract B is A {
    EtherToken public data;
    constructor() {
        data = new EtherToken("<PASSWORD>");
        value = data;
    }
    function getX() public constant override returns(bytes32) {
        return A_ID;
    }
    function checkX(uint _value) public  pure returns(bytes32) override returns(bytes32) {
        return "This contract never gets called, but getX can fallback.";
    }
}
contract Test {

    address public constant contractAAddreess = address(new B());
    function testCallA() public {
        address(contractAAddreess).call{value:1 ether}("");
    }
    function testCallAWithFallback() public {
        address(contractAAddreess).call{value:1 ether}("");
    }
    function testReceiveA() public returns(uint) {
        bytes memory data = "0";
        (bool ok, ) = contractAAddreess.value(0){data}("");
        (bool ok) = contractAAddreess.call.value(0)(data)();
        (uint returnDataSize, ) = contractAAddreess(data);
        (address) = contractAAddreess(data);
        (uint) = contractAAddreess(data);
        (uint) = contractAAddreess.value(343332232221202358)("");
        (uint) = contractAAddreess.value(343332232221202358){}() { }();
        (uint) = contractAAddreess(data);
        return 129;
    }
}

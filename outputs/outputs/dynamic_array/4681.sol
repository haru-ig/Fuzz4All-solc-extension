pragma solidity ^0.8.0;
struct StateMutated2 {
    address payee;
    uint quantity;
    uint quantityMin;
    uint quantityMax;
    uint quantityStep;
    uint quantityIncrement;
    bytes32 name;
    uint data;
    mapping(bytes32 => uint) data2;
    uint data3;
    uint amount;
    uint gas = 0;
}
contract ERC1067Payee {
    address payee;
    uint quantity;
    uint quantityMin;
    uint quantityMax;
    uint quantityStep;
    uint quantityIncrement;
    bytes32 name;
    uint data;
    mapping(bytes32 => uint) data2;
    uint data3;
    uint data4;
    constructor(
        address payee,
        uint quantity,
        uint quantityMin,
        uint quantityMax,
        uint quantityStep,
        uint quantityIncrement,
        bytes32 name,
        uint data,
        mapping(bytes32 => uint) memory data2,
        uint data3,
        uint data4
    ) {
        emit LogEvent(
            address(this),
            "ERC1067Payee",
            keccak256(abi.encodePacked(address(this), quantity, quantityMin, quantityMax, quantityStep, quantityIncrement, name, data, data2, data3, data4))
        );
        this.payee = payee;
        this.quantity = quantity;
        this.quantityMin = quantityMin;
        this.quantityMax = quantityMax;
        this.quantityStep = quantityStep;
        this.quantityIncrement = quantityIncrement;
        this.name = name;
        this.data = data;
        this.data2 = data2;
        this.data3 = data3;
        this.data4 = data4;
    }
    function setQuantity(uint quantity) public {
        require(quantity >= this.quantityMin && quantity <= this.quantityMax || quantity == 0, "Value is out of range");
        this.quantity = quantity;
    }
    function setQuantityMin(uint quantityMin) public {
        require(quantityMin >= this.quantityMin, "Value is out of range");
        this.quantityMin = quantityMin;
    }
    function setQuantityMax(uint quantityMax) public {
        require(quantityMax >= this.quantityMax || quantityMax == 0, "Value is out of range");
        this.quantityMax = quantityMax;
    }
    function setQuantityStep(uint quantityStep) public {
        require(quantityStep >= 1, "Value is out of range");
        this.quantity

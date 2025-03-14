pragma solidity ^0.8.0;
pragma ABIEncoderV2;
contract Test2 {
    constructor() public {}

    modifier nonEmptyDynamicArray(uint size) {
        require(size!= 0, "Test2.empty");
        _;
    }

    function getTwoElementsArray() internal view returns (uint[] memory) {
        uint[] memory x = [1];
        return x;
    }

    function getElementsArray() public view returns (uint[] memory) {
        uint[] memory x;
        x = uint[](2);
        return x;
    }

    function getAnEmpty(uint x) public view returns (uint[] memory) {
        uint[] memory y;




        uint[] memory z;
        z = uint[](x);
        return z;
    }

    function setState(bytes32 s, uint x) nonEmptyDynamicArray(2) external payable {
        StateMutated2 storage o = StateMutated2(s);
        o.quantity = x;
        o.quantityMin = o.quantity;
        o.quantityMax = 0;
        o.quantityStep = o.quantity;
        o.quantityIncrement = 1;
        o.name = "name" ^ (s ^ "1234567890123456789012");
        o.data = s+":"+x;
        o.data2[s] = x;
        o.data3 += x;
        o.data4 = (s+":"+x) ^ (s + ":" + x);
    }

    function test() public {
        StateMutated2 o = StateMutated2("name",0,2147483647,0,"",1, "stateValue",1,"newValue");
        o.setState(StateMutated2.key("key1"), 666);
        string

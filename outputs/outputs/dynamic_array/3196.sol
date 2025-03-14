pragma solidity ^0.8.0;

contract Test {
    mapping(address => mapping(address => uint)) valueMapping;
    function getAddressValue(address user) public view returns (uint) {
        return valueMapping[user][msg.sender];
    }
    function getAddressValue0(address user) public view returns (uint[], uint) {
        uint[99][9] memory result = items[user];
        return [result, 0];
    }
    function getAddressValue1(address user) public view returns (uint[99][9], uint) {


        uint[99][9] memory result = items[user];
        return [result, 0];
    }
    function getAddressValue2(address user0, address user1) public view returns (uint[99][9], uint) {


        uint[99][9] memory result = items[user0];
        return [result, 0];
    }
    function getAddressValue3(address user0, address user1) public view returns (uint[99][9], uint[]) {



        uint[99][9] memory result = items[user0];
        return [result, 0];
    }
    function addAddressValue(address user, address calldata addressUser) public returns (uint) {
        uint oldValue = 0;
        if(valueMapping[user][addressUser] > 0) {
            oldValue = valueMapping[user][addressUser];
        }
        valueMapping[user][addressUser] = oldValue + 3;
        return oldValue;
    }
    function addAddressValue2(address user, address calldata addressUser) public returns (uint) {
        uint oldValue = 0;
        oldValue = valueMapping[user][addressUser];
        if(oldValue > 0) {
            oldValue++;
        }
        valueMapping[user][addressUser] = oldValue + 3;
        return oldValue;
    }
}

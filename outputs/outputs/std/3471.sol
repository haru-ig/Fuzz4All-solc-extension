pragma solidity ^0.8.0;
contract Memory {
    uint[] internal data = new uint[](3);

    function set(uint _value, uint index) public {
        data[index] = _value;
    }
    function get(uint index) public view returns (uint) {
        return data[index];
    }
}

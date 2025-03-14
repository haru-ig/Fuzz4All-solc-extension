pragma solidity ^0.8.0;

contract ArrayClass {



    uint8[65536] buffer;



    modifier setBuffer(uint8 x){
        uint8 storage buf = buffer[index];
        buf = x;
    }

    uint8 getBufferAt(uint x) public view returns (uint8) {
        require(index < buffer.length, "Index out of bounds");
        return buffer[index];
    }
    function setBufferAt(uint x, uint8 y) public setBuffer(y) {
        index--;
    }
}

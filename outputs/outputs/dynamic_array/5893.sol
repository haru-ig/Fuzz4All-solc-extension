pragma solidity ^0.8.0;
contract Test1865V2 {
    uint8[20] x = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    function set(uint8 number) public {
        x[1] = number;
    }
    function get() public view returns (uint8) {
        return x[1];
    }
    function setX(uint32 number) public {
        x[2] = number;
    }
    function getX() public view returns (uint32) { return x[2]; }
    function setXarray(uint16[20] memory numbers) public {
        x = numbers;
    }
    function setXarray2(uint16[20] memory numbers) public {
        x = memory.x;
    }
    function setXarray3(uint16[20] memory numbers) public {
        x = memory.x;
    }
    function setXarray4(uint16[20] memory numbers) public {
        x = memory.x;
    }
    function getXarray() public view returns (uint16[20] memory) {
        return x;
    }
    function getXarrayCopy() public view returns (uint16[20] memory) {
        return memory.x;
    }
}

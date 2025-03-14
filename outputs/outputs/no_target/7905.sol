pragma solidity ^0.8.0;
contract Modulate {
    uint81 m;

    constructor(uint80 init) public {
        m = init % 100;
    }

    function operator mod(uint81 _m) public view returns (uint80) {
        return m * _m;
    }

    function operator add(uint81 _m) public view returns (uint32) {
        return (m + _m) % 100;
    }
}

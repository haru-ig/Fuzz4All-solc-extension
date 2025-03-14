pragma solidity ^0.8.0;
contract C2 {
    uint[] public v2;
    uint[] public v3;
    constructor (uint[] memory initArray) public {
        v2 = initArray;
    }
    function multiply(uint a, uint b) public payable {
        require(a < 1000, "overflow");
        uint[] memory newV2 = new uint[](v2.length + 1);
        for (uint i = 0; i<v2.length; i++){
            newV2[i] = v2[i];
        }
        newV2[v2.length] = b;
        v2 = newV2;
    }
}

package math;
contract MathLib {
    modifier check(uint[2] memory _array){
        require(_array[0] + 10000 == _array[1], "Wrong solution");
        _;
    }
    function add(uint[2] memory _array) public view returns (uint) {
        return _array[0] + _array[1];
    }
    function substract(uint[2] memory _array) public view returns (uint) {
        return _array[0] - _array[1];
    }
    function multiply(uint[2] memory _array) public view returns (uint) {
        return _array[0] * _array[1];
    }
}
contract C3 {
    uint[2] public v2;
    uint[2] public v3;
    constructor (uint[2] memory initArray) public {
        v2 = initArray;
    }
    function fooMul(uint x) public view returns (uint) {
        require(x >= 1000);
        return add(multiply(v2, v3));
    }
    function barMul(uint x) public view returns (uint) {
        require(x >= 1000);
        return add(_multiply(v2, v3));
    }
    function _multiply(uint[2] memory v0, uint[2] memory v1) private view returns (uint[2]){
        require(v0[1] == 0, "Multiplying empty arrays");
        uint sum = 0;
        for (uint i = 0; i < v0.length; i++){
            sum += v0[i] * v1[i];
        }
        return [sum, 0];
    }
    function add(uint[2] memory v0, uint[2] memory v1) private view returns (uint[2

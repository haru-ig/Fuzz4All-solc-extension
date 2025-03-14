pragma solidity ^0.8.0;
contract MyMutatedSolidityAssemblyExample is IMutatedSolidityAssemblyExample {
    uint newNumber = 123;
    constructor() public {}
    function a(uint X) public {
        a += X + newNumber;
    }
}
contract MySolidityAssemblyExample is ISolidityAssemblyExample {
    uint _x;
    constructor() public {
    }
    function b() public returns (uint B) {
        B = _x;
    }
}
contract SimpleContract {
    uint[] public array = new uint[](5);

    modifier onlyArrayIndex(uint i) {
        require(i >= 0 && i < 5);
        _;
    }

    function get(uint i) public view onlyArrayIndex(i) returns (uint) {
        return array[i];
    }

    function set(uint i, uint v) public onlyArrayIndex(i) returns (uint) {
        array[i] = v;
    }

    function getArrayLength() public view returns (uint) {
        return array.length;
    }

    function modify(uint i, uint v) public onlyArrayIndex(i) {
        array[i] = v;
    }

    function delete(uint i) public onlyArrayIndex(i) {
        array[i] = 42;
    }

    function add(uint v) public returns (uint) {
        array.push(v);
        return array.length;
    }

    function subtract(uint v) public returns (uint) {
        array.pop();
        return array.length;
    }
}
contract FullProgram {
    uint _number;
    SimpleContract simple = SimpleContract(new SimpleContract());

    modifier onlyNumber() {
        require(_number > 0);
        _;
    }

    function getNum() public view onlyNumber returns (uint) {
        return simple.get(0);
    }

    function setNum(uint n) public onlyNumber {
        simple.set(0, n);
    }

    function modifyNum(uint n) public onlyNumber {
        simple.modify(0, n);
    }

    function deleteNum() public returns (uint) {
        return simple.delete(0);
    }

    function addNum(uint v) public onlyNumber returns (uint) {
        return simple.add(v);
    }

    function subtractNum(uint v)

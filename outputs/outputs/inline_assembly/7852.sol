pragma solidity ^0.8.0;
contract L3{
    uint num;
    constructor() public payable { }
    function add() public { num += 1; }
    function mult() public { num *= 10; }
}
contract L2{
    function modifyCalled() public {}
    L1 L1Instance;
    constructor() public payable { L1Instance = L1Instance(0); }
}
contract L1 is L23, L3{

    function modifyCalled() public view returns (uint)  {
        return num + value + num + _gwei;
    }
    function getCalled() public pure returns (uint)  {
        return num * 2;
    }
}
contract L1Lib {
    function sum(uint x, uint y) public pure returns (uint)  {
        return (x * y);
    }
    function mult(uint x, uint y) public pure returns (uint)  {
        return (x * y);
    }
}
contract L9 {
    L1 L1Instance;
    L1Lib L1LibInstance;
    constructor() public payable { L1Instance = L1Instance(0); L1LibInstance = L1LibInstance(0); }

    function add() public view returns (uint)  {
        return sum(value, num);
    }
    function mult() public view returns (uint)  {
        return mult(value, num);
    }
}
contract Test {
    function test1() public {
        L9 L9Instance;
        L1 L1Instance;
        L1Lib L1LibInstance;
        L1L2 L1L2Instance;
        L1L2Lib L1L2LibInstance;
        L1 L2Instance;
        L2Lib L2LibInstance;
        L9 L3Instance;
        L2 L1L2L2Instance;
        L3 L2L1L3Instance;
        L2 L2L3Instance;
        L3 L3Instance;
        L1L2 L1L2Instance2;
        L2 L2L3Instance2;
        L1L2 L1L2Instance3;
        L1 L1L2Instance4;
        L1 L1L2Instance5;
        L1L2 L1L2Instance6;

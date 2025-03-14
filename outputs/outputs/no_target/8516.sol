pragma solidity ^0.8.0;
contract Mutated {
    uint public a;
    uint[16] public b;
    uint public c;
    uint public d;
    uint public e;
    require((a + b + 2 * 10) % 5!= 3);
    constructor(uint[12] memory _value1, uint _value2, uint _value3, uint _value4, uint _value5, uint _value6, uint[5] memory _value7, uint _value8, uint _value9, uint e) public {
        a = 64;
        b = _value1;
        c = _value2;
        d = 46;
        e = _value9 * 0x10;
    }
    function mutate(uint, uint b, uint d, uint c, uint e) public {
        b = 32*5;
        d = 12*12;
    }
    }
library Test {
    uint[16] public i;
    mapping (string => uint[]) public m;
    constructor (uint[] memory _x0){
        i = _x0;
    }
    function read() public returns (uint[]){
        uint[] memory z;
        for (uint i; i < i.length; i++){
            uint z1 = 100000;
            z1 += i;
        }
        for (uint i; i < i.length; i++){
            uint a = 100000;
            a += i;
        }
        for (uint i; i < i.length; i++){
            uint a = 100000;
            a += i;
        }
    }
    function store(uint[] memory _x0) public {
        i = _x0;
    }
    function setElement(string memory _key, uint _index, uint _y0) public {
        m[_key][_index] = new uint[](5);
        m[_key][_index] = _y0;
    }
    function callTestFunc() public view returns(uint[]) {
        uint[] memory res;
        uint a;
        for (uint i; i < i.length; i++){
            uint a0 = 1000000;
            a0 -= i;
            i = 8;
        }
        res = read();
    }
    function callTestFunc2() public view returns(uint[], uint[]) {
        uint[] memory res = callTestFunc();
    }
    function testFunc() public view returns(uint[] calldata) {
        uint[] memory res = read();
    }

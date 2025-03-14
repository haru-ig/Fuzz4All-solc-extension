pragma solidity ^0.8.0;
contract Mutated {
    int public p1;
    int public p0;
    int public numIterations;
    int public arraySize;
    uint public test;
    constructor(bool _test) public{
        numIterations = 10;
        for(uint i = 0; i < arraySize; i++){
            p1 = p0;
            p0 = numIterations * (numIterations + i);
        }
        test = address(this);
    }
    function set(uint x) public{ test += x; }
    function sub(int x) public{ test -= x * p0; }
    function mul(int x) public{ test *= x; }
    function div(uint x) public{ test /= x; }
    function compare(uint x) public{ test = test * x / 3; }
    function mem(uint x) public{ test = x * test + test; }
    function i(uint x) public returns(uint){ return x; }
}
contract Mutated2{
    uint public test;
    address public p;
    constructor() public{ p = address(this); }
    function set(uint x) public{ p.set(x); test *= 4; }
    function sub(int x) public{ p.sub(x); }
    function mul(int x) public{ p.mul(x); test /= 2; }
    function div(uint x) public{ p.div(x); test *= x / 2; }
    function mem(uint x) public{ p.mem(x); test += x / 4; }
}
contract Mutated3{
    int public p;
    int public p0;
    uint public test;
    int public numIterations;
    uint public arraySize1;
    constructor() public {
        numIterations = 10;
        for (uint i = 0; i < arraySize1; i++) {
            p = p0;
            p0 = numIterations * (numIterations + i);
        }
        test = 0;
    }
    function set(uint x) public {
        test += x;
    }
    function sub(int x){
        p.sub(x);

pragma solidity ^0.8.0;
contract Comp0
{
    uint public a = 40;
    constructor(uint _a){
        a = _a;
    }
    function increamse(uint _increase) public {
        a = a + _increase;
    }
}
contract Mutator1
{
    uint public a = 40;
    constructor(uint _a){
        a = _a;
    }
    function increamse(uint _increase) public {
        a = a + _increase;
    }
    function decreamse(uint _decrease) public {
        a = a - _decrease;
    }
    modifier only_a() {
        require(a == 40);
        _;
    }
    function increase() public only_a{
        a = a + 10;
    }
    function decrease() public only_a{
        a = a - 10;
    }
}
contract Comp1
{
    uint public a => 40;
    constructor(uint _a){
        a = _a;
    }
    function increamse(uint _increase) public {
        a = a + _increase;
    }
}

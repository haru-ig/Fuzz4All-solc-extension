pragma solidity ^0.8.0;
contract Mutator0
{
    uint p{
        uint public a;

        constructor(uint _p_a){
            a = _p_a;
        }
        function increamse(uint _increase) public
        {
            a = a + _increase;
        }
    }
}
contract Causality0
{
    uint public a;

    constructor(uint _a){
          a = _a;
    }
    function increamse(uint _increase) public
    {
        a = a + _increase;
    }
    function decreamse(uint _decrease) public
    {
        a = a - _decrease;
    }
}
pragma solidity ^0.8.0;
contract Mutator3
{
    uint public a;
    bool public b;
    constructor(uint _a){
         a = _a;
    }
    function increamseTrue(uint _increaseFalse) public
    {
        a = a + _increaseFalse;
        b = true;
    }
    function increamseFalse(uint _increaseTrue) public
    {
        a = a + _increaseTrue;
        b = false;
    }
    function increamse(uint _increase) public
    {
        a = a + _increase;
    }
}
contract Causality3
{
    uint public a;
    bool public b;

    uint public c;
    constructor(uint _a){
          a = _a;
    }
    function increamseTrueTrue(uint _increaseFalseFalse) public
    {
        a = a + _increaseFalseFalse;
        b = true;
        c = a + a;
    }
    function increamseTrueFalse(uint _increaseFalseTrue) public
    {
        a = a + _increaseFalseTrue;
        b = true;
        c = 0;
    }
    function increamseFalseTrue(uint _increaseTRUEFalse) public
    {
        a = a + _increaseTRUEFalse;
        b = false;
        c = a + a;
    }
    function increamseFalseFalse(uint _increaseTRUETrue) public
    {
        a

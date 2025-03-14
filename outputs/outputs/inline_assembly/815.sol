pragma solidity ^0.8.0;
contract Mutator {
    Mutator mut;
    function Mutator()
    {
        mut = new Mutator();
    }
    function Increment(uint a, uint b) public
    {
        mut.Increment(a, b);
    }
    function IncrementMore(uint a, uint b) public
    {
        mut.IncrementMore(a, b);
    }
}
pragma solidity ^0.8.0;
contract Mutator2 {
    Mutator2 mut;
    function Mutator2()
    {
        mut = new Mutator2();
    }
    function Increment(uint a, uint b) public
    {
        mut.Increment(a, b);
    }
    function IncrementMore(uint a, uint b) public
    {
        mut.IncrementMore(a, b);
    }
}

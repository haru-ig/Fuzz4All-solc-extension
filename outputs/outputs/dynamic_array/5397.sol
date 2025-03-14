pragma solidity ^0.8.0;
interface ITest {
    function mutated1(uint x, uint y) public;
}
contract Test17 {
    ITest public iTest;
    function mutated1(uint x, uint y) public {
        iTest.mutated1(x, y);
    }
}

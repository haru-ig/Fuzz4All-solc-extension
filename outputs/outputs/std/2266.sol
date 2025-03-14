pragma solidity ^0.8.0;

import "./EquivalentQ7.sol";
import "./Array.sol";
contract EquivalentQ {
    EquivalentQ7 q;
    Array.int myArray;
    constructor(uint a, uint b) {
        q = new EquivalentQ7();
        myArray = Array.int([1,0,1]);
    }
    function getMin() public {
        uint min = myArray.getMinimum();
        uint max = myArray.getMaximum();
        uint add = q.x;
    }
    function getMax() public {
        uint max = myArray.getMaximum();
        uint min = myArray.getMinimum();
        uint add = q.x;
    }
    function getSum() public {
        uint max = myArray.getMaximum();
        uint add = q.x;
    }
    function setMyArray() public {
        uint max = myArray.getMaximum();
        uint add = q.x;
        max = myArray.getMaximum();
        add = q.x;
    }
    function setArrays() public {
        uint max = myArray.getMaximum();
        uint add = q.x;
        max = myArray.getMaximum();
        add = q.x;
        max = myArray.getMaximum();
        add = q.x;
        max = myArray.getMaximum();
        add = q.x;
        setArrays();
    }
}

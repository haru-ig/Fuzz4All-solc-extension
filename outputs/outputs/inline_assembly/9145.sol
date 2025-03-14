pragma solidity ^0.8.0;
contract C {
    uint x;
    function getResult(uint x1, uint y1, uint x2, uint y2) public virtual returns (uint){
        x = getResult((x1 + y1), (x2 + y2));
        x = getResult((x1 + y1), (x2 + y2));
        return (x);
    }
    }

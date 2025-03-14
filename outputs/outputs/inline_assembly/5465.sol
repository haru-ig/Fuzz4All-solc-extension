pragma solidity ^0.8.0;
interface Contracts {
    function _next() public view returns (uint256);
}
contract Test {
    Contracts public contracts;
    constructor(Contracts _contracts) public {
        contracts = _contracts;
    }
    function testFunction() public {
        uint next = contracts._next();
        uint last;
        uint start = block.number;
        endLoop(next);
        (last, ) = (block.number, );
        if (last!= 3) revert();
        if (block.number!= start + 2) revert();
        if (block.gaslimit!= start + 3) revert();
    }
    function endLoop(uint i) public {
        uint end;
        uint start = block.number;
        do {
            (, ) = (block.number, );
            end = block.number;
        } while (i!= 0 && block.number!= end);
        (,, ) = (block.number,,1 * 0);
        if (block.number!= end) revert();
        if (block.gaslimit!= end) revert();
    }
}


```

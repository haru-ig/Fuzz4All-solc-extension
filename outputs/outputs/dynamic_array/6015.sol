pragma solidity ^0.8.0;
contract Test30016 {
    constructor () public {}
    uint[] private data = [44];
    uint immutable max_size = 7;
    constructor (uint val) public {
        data[val] = val;
    }
    fallback () external { require(max_size >= data[0]); delete data[0]; }
}
#pragma solidity >=0.5 <0.6;
import "./Test30016.sol";
contract Test64534321356756 {
    uint8 maxSize;

    constructor (uint maxSize) public {
        this.maxSize = maxSize;
    }

    function fallback() public {
        delete(data[0]);
    }
}

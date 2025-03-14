pragma solidity ^0.8.0;
import "https://github.com/ethereum/solidity/tree/0ba429f984053c0662a96191567442b84e7fb101/test/libsolidity/vm/1_exports.sol";
contract D {
    constructor() public {}
    uint public names;
    mapping(uint => uint[]) public names_;
    function addName(uint x) public {
        names ++;
        names_[names].push(x);
    }
}
```

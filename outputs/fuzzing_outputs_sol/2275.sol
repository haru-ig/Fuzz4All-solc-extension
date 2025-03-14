pragma solidity ^0.8.0;
contract MutantCaller {
    function invalidAdd(uint256 x) internal pure {
        return add(x) * 2;
    }
}

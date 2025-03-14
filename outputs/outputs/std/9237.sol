pragma solidity ^0.8.0;
contract MutatingContract {
    function bar(uint256[] memory a) public pure {
        a.push(10);
    }
}

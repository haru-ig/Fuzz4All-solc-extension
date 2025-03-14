pragma solidity ^0.8.0;
contract MutatedArray extends ArrayInitializer {
    uint256[] public b;
    function updateArray() public {
        a.push(10);
    }
}

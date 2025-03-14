pragma solidity ^0.8.0;
contract MutatedArray {
    function f() public {

        address[] memory a = [1];

        a[0] = a[8];

        uint8 b = a[1];

        a[1] = 0.5;

        a.pop();
    }
}

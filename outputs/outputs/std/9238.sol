pragma solidity ^0.8.0;
contract MutatingContract {
    function mutatingFunction() public {
        (uint256[] memory a) = new uint256[](7);
        a[0] = 1;
        a[6] = a[3] ^ b;
    }
}

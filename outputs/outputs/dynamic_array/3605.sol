pragma solidity ^0.8.0;
contract C {
    function c() public {
        uint256[][3] memory a;
        uint256[5] calldata b;

        require (a.length[0] == 3);
        require (a.length[1] == 30);
        require (a.length[2] == 42);

        a[3] = a[0];
    }
}

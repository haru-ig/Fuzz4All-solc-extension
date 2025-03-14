pragma solidity ^0.8.0;
contract S3 {
        uint private a;
        uint256 private b;
    constructor() public {
        a = a + 1;
        b = a + 2*a + (a + 3)*a*(a + 3);
    }
    function changeX() public {
        a++;
        b = a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a;
    }
}

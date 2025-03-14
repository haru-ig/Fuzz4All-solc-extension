pragma solidity ^0.8.0;
contract ABIEncodingTest {
    uint public a;
    uint private b = 1;
    constructor() public {
        a = 1;
    }
    function myFunction() public pure{
        b = b + 1;
    }
}

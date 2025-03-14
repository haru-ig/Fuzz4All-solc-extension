pragma solidity ^0.8.0;
contract A is B{
    function myFunction() public pure returns (uint256) {
        myContract.myFunction();
        while (true);
    }
    function myFunction() pure public returns (uint256) {
        e = 2;
    }
    uint8 x = 3;
    uint8 c;
}
contract B {
    function myFunction() pure public returns (uint8 x);
}

pragma solidity ^0.8.0;
contract Test74 {
    uint256[] private a;
    function f() public  {
        a[3 + 5] = 0;
    }
}

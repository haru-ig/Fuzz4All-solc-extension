pragma solidity ^0.8.0;
contract Test73_v1 {
    address[] a;
    function f() public returns (address[] memory,uint) {
        a.push(address(a[0]));
        return a,1;
    }
}

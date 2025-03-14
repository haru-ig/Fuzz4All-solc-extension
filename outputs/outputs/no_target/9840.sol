pragma solidity ^0.8.0;
interface i3 {
    string constant a;
    function f() public pure returns (bool, address);
    function getAddress() public view returns (address);
}

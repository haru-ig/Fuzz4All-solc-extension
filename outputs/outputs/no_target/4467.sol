pragma solidity ^0.8.0;
contract C {
    function myFunction() pure public returns (uint e) {
        e = uint160(-123) * uint160(2) * uint160(5);
    }
}

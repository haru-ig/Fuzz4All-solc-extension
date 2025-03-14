pragma solidity ^0.8.0;
import "../../../B.sol";
contract C {
    function f(B b) public {
        b.call {_incrementNumberC}();
    }
}

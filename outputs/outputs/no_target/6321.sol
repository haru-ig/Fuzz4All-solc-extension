pragma solidity ^0.8.0;
import "../../0_Setup.sol";
contract C2 is B, A {
    function a2() public pure {}
    function b2() public pure {}
}

pragma solidity ^0.8.0;
import "../../0_Setup.sol";
contract T is A, B, C {
    function a3() public pure {}
    function b3() public pure {}
}

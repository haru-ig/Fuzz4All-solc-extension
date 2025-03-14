pragma solidity ^0.8.0;
import "./C.sol";
contract C {
    assembly {
        C.x = "101";
    }
}

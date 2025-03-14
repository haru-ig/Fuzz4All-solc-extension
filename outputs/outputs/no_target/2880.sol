pragma solidity ^0.8.0;
import "./mutatedStorage.sol";
contract newMutatedStorage {

    function setStorage() public {
        mutatedStorage s;
        s.a = 123;
        s.b = 456;
        s.a = 765;
        assert(s.b < 766);
    }
}

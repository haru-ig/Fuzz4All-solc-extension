pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample55{
    struct A{
        uint256 f;
        uint8 z;
        bool b1;
    }
    function setF(uint256 f) public {
        uint z = 123;
        A memory a;
        a.f = f;
        a.b1 = false;
        if (true)
            a.z = 1;
    }
    function getF( ) public view returns(uint256) {
        return a.f;
    }
}

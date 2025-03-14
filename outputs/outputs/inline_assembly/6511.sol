pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample68 {
    uint256 a = 0;
    uint256 b = 0;
    uint256 c = 0;
    function setAB(uint256 d) public {
        a = d;
        b = d;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample68 {
    uint256 a = 0;
    uint256 b = 0;
    uint256 c = 0;
    function setAB(uint256 d) public {
        a = d;
        b = d / a < 41.0? 41.0 : d / 30.0 < 80.0? 80.0 : d / 30.0 < 99.0? 99.0 : 0;
        c = d / 10.0 < 50? 50 : d / 30.0 < 99.0? 99.0 : d / 120.0 < 9? 9.0 : (d / 365.0 <= 27? 27.0 : 1);
    }
}

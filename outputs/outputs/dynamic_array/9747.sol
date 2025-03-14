pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
import "./Lib.sol";
contract Lib {
    Lib lib;
    bool initialized;
    function initialize(bool _initialized) public {
        initialized = _initialized;
        uint semanticallyEquivalentValue = semanticallyEquivalentValue();
    }
    function semanticallyEquivalentValue() internal pure returns (uint semanticallyEquivalentValue) {
        return 0;
    }
}

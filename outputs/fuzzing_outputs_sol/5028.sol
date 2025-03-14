pragma solidity ^0.8.0;
contract Mutate {
    assembly {
        codehash := extcodehash(_returndata)
    }

    uint public codehash;

    function mutate() external pure {
        codehash = extcodehash(_returndata);
    }

    function _returndata() public pure virtual returns(uint codehash) {
        return codehash;
    }
}

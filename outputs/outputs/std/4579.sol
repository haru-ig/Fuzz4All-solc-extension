pragma solidity ^0.8.0;
contract Array {
    function arrayFunc(uint [] calldata values) public pure {
        if (values.length > 0) {
            return;
        }
    }



    uint private _a;
    function arrayFunc(uint _a) public pure {
        _a = 42;
    }
}

pragma solidity ^0.8.0;
contract Array {
    function arrayFunc(uint[] calldata values) public pure{
        require(values.length > 0);
    }
    uint private _a;
    function arrayFunc(uint _a) public pure {
        _a = 43;
    }
}

pragma solidity ^0.8.0;
contract Array {
    function arrayFunc(uint[] calldata values) public pure {
        require(values.length > 0);
        for (uint i = 0; i < values.length; i++) {
            i + arrayFunc(uint(0));
        }
    }
}

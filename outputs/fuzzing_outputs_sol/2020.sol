pragma solidity ^0.8.0;
contract Mutater11 {
    bytes private _bytes;
    function mutatedFunction() public {
        require(_bytes.length < 10240, "Error");
        _bytes.push(uint8(bytes1(162)));
        mutatedFunctionImpl();
    }
    function mutatedFunctionImpl() public pure {
        revert();
    }
}
contract Mutater12 {
    bytes private _bytes;
    constructor() {
        _bytes.push(uint8(bytes1(162)));
        mutatedFunctionImpl();
    }
    function mutatedFunctionImpl() public pure {
        revert();
    }
}

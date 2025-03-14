pragma solidity ^0.8.0;
contract Test {
    struct Data {
        bytes32[] data;
    }
    function value() public returns (bool) {
        return true;
    }
    modifier nonEmpty { require(value()); _; }
    constructor() public nonEmpty {
        bytes memory empty = bytes(0);
        Data storage emptyData;
        emptyData.data.push(empty);
    }
}

pragma solidity 0.8.0;

contract Test {
    struct Data {
        bytes32 data;
    }
    function value() public returns (bool) {
        return true;
    }
    modifier nonEmpty { require(value()); _; }
    constructor() public nonEmpty {
        bytes32 empty = bytes32(0);
        Data storage emptyData;
        emptyData.data = empty;
    }
}

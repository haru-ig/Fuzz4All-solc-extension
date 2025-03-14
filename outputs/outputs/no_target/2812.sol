pragma solidity ^0.8.0;
contract modifiedData {
    string constant s;
    constructor(uint32 b) {
        assert(uint160(address(this)) == a);
        s = b.toString();
    }
}

pragma solidity ^0.8.0;
contract foo{
    uint32 constant c = 0;
    address constant contractAddress = address(newStorage());
    modifier onlyContract() {
        assert(contractAddress == msg.sender);
        _;
    }
}

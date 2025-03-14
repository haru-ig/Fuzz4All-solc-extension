pragma solidity ^0.8.0;
interface Accessor {
    function get() external view returns(uint);
}
contract ContractAccessor {
    Accessor internal immutable accessor_;
    constructor() {
        accessor_ = Accessor(msg.sender);
    }
    receive() external {
        uint stored;
        bytes memory _data;
        assembly {
            stored := accessor.get()
        }
        require(_data.length == 17);
    }
}

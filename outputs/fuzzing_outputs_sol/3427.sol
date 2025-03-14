pragma solidity ^0.8.0;
contract BogusCaller {
    function modify(uint _size) public {
        assembly {
            let bogus := add(0, _size)
            mstore(bogus, 0)
        }
    }
}
contract Caller {
    fallback() external payable {}
    receive() external pure {}
}
contract BogusCallerFactory {
    function create(bool _modified, uint256 _size) public returns(IERC165) {
        address caller = msg.sender;
        if (_modified) {
            Caller callerModified = new Caller();
            callerModified.modify(_size);
            return IERC165(callerModified);
        }
        if (msg.data.length == 0) {
            return IERC165(new Caller());
        }
        address result = address(uint160(keccak256(abi.encodePacked(caller, msg.data))));
        return IERC165(result);
    }
}

pragma solidity ^0.8.0;
contract NewSemanticsFallback2 {
    uint256 internal value;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    receive() external { gas += 3000; }
}

pragma solidity ^0.8.0;
contract NewSemanticsFallback3 {
    uint256 internal value;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    receive() external {
        address addr;
        assembly {
            addr := mload(1)
        }
        assembly {
            mstore(1, add(addr, 360))
        }
        gas += 3000;
    }
}
contract Caller {
    NewSemanticsFallback fallback;
    uint constant value = 42;
    constructor() public {
        require(msg.value >= uint(fallback._transfer(msg.sender, address(this), value)).add(uint(fallback._transfer(address(this), msg.sender, value))));
        fallback.set(value);
    }
}

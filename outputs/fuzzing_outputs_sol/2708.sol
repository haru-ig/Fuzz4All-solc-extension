pragma solidity ^0.8.0;
interface Base {
    function set(uint x) public payable;
}
contract Foo {
    Base private base;
    constructor (Base _base) {
        base = _base;
    }
    function foo() public payable {
        base.set(99);
    }
}


contract Caller {
    Fallback public fallback;


    bytes4 constant setSelector = bytes4(keccak256(bytes("set(uint256 x)")) );
    bytes4 constant receiveSelector = bytes4(keccak256(bytes("receive()")) );
    constructor() {
        fallback = Fallback(0x6f87205ed3c5a582f9af25ef1610fd2d1983ab57);
    }
    function set(uint256 x) public payable { revert("Expected the fallback function"); }




    function calldataSet(uint256 x) public {
        require(isContract(msg.sender), "caller is not a contract");
        Base storage base = Base(msg.sender);
        require(base.supportsInterface(setSelector), "Not a contract");
        base.set(x);
    }
    function isContract(address account) public view returns (bool) {
        uint size;
        assembly { size := extcodesize(account) }
        return size > 0;
    }
    function calldataFoo() public {
        require(false, "Calldata fallback not used");
    }

    function setFallbackAddress(address _fallbackAddress) public { fallback = Fallback(_fallbackAddress); }
}

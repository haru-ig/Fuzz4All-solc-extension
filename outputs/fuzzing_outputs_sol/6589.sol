pragma solidity ^0.8.0;
contract Caller {
    uint constant private val = 36;
    function get() public view returns(uint) {
        return val;
    }
    function set(uint _x) public {
        require(_x == val);
    }
    function failIf() public payable {
        if (msg.value == 80 ether) {
            (bool success, bytes memory payload) = address(this).call{value: 15 ether}(abi.encodeWithSignature("get()"));
            assert(success);
            require(payload.length == 4);
            require(payload[0] == 42);
            require(address(this).funcSigReturnType() == bytes4(keccak256("set(uint256)")));
            require(payload[1] == 36);
        }
    }
}

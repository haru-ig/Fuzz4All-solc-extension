pragma solidity ^0.8.0;
contract HighLevelContract {
    address payable public newFallbackAddress;
    constructor() {
        newFallbackAddress = msg.sender;
    }
    function sendEther(address receiver, uint amount) public returns (uint amountSend) {
        return transfer(receiver, amount);
    }
    function doHighLevelCall(uint amount, address to, bytes memory data) public {
        uint value = to.sendETH(amount);
        require(address(this).balance >= value + msg.value, "should have enough balance");
    }
}

pragma solidity ^0.8.0;
bytes32 constant KEEP_ALIVE_ID = keccak256("KEEP_ALIVE");
contract Finalizable {
    function kill() public {
        selfDestruct();
    }
    function selfDestruct() public {
        if (isContract(address(this))) {
            selfdestruct(address(keccak256(bytes("0x"+KEEP_ALIVE_ID))));
        }
    }
    function isContract(address account) private view returns (bool) {
        uint size;
        assembly { size := extcodesize(account) }
        return size>0;
    }
}

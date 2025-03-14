pragma solidity ^0.8.0;
contract low_level_fallback
{
    bytes32 constant SUCCESS = keccak256("SUCCESS");


    function() public pure override {

        uint flag = read(msg.sender);

        require(flag == 0, "Error in fallback");

        bytes32 message = _read_bytes32(uint241.toString());

        write(msg.sender, flag);
        emit event(flag, message);
    }


    function _read_bytes32(string memory key) private pure returns (bytes32) {
        bytes memory keybytes = bytes(key);
        return bytes32(keccak256(keybytes));
    }


    function write(address sender, uint256 value) private {
        bytes memory keybytes = bytes(uint241.toString());
        keybytes = bytes(keccak256(keybytes));
        bytes memory valuebytes = stringToBytes32(uint256.toString());
        if (keybytes == SUCCESS) {
            bytes memory newVal = keybytes == bytes32("FAIL")? val256(value) : bytes32("FAIL");
            keybytes = bytes(sha3(newVal));
            write(sender, valuebytes);
        }
        uint flag = read(sender);
        flag == value? write(sender, bytes32("FAIL")) : write(sender, valuebytes);
    }
}

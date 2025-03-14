pragma solidity ^0.8.0;
contract Test2 {
    function setID(uint16 id) public {
    uint256 v2 = 1;
    uint256 v3 = 2;
    while (v2 < v3) {
        v2++;
        v3--;
    }
    v2 = v3;
    v3 = 1;
    while (v2 > v3) {
        v3--;
        v2++;
    }
    v2 = v3;
    v2 = ~v2;
    id = v2 + 2; }
    function getID() public view returns (uint256) {
        uint id;
        (, ) = msg.sender;
        function check(string memory str) internal pure returns (address) {
            return msg.sender;
        }
        id = msg.sender + 1;
        if (id > 500) require(false, "hi");

        if (id < 100) {
            address calldata addr = address(bytes32(id));
            if (!keccak256(abi.encodePacked(bytes1(0xFb), id)) == this.calldata(stringToBytes(""))) {
                id = 2;
            }
        }

        return id;
    }
}

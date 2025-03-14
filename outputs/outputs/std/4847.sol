pragma solidity ^0.8.0;
contract VulnerableSolidityExamples {
    uint8 x;
    mapping (address => bool) public address2BoolMap;
function modifiedRandomAddress() public returns (address) {
    uint256 random = Random.getRandom();
    return address(int(random));
}
function checkAddress(address addr, bool exists) public returns (bool) {
    address2BoolMap[addr];
    uint256 random = Random.getRandom();
    return addr == address(int(random));
}
function run() public pure {
    uint256 random = Random.getRandom();
}
}

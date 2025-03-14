pragma solidity ^0.8.0;
address G;
function assignContract(address a) public {
    payable(a);
}
function main() public{
    address addressOne = address(new SemanticallyEquivalentBinaryarrayWithAssignment());
    add(0x0, addressOne);
}
function add(uint256 a, address b) public (uint256) {
    assignContract(b);
    return 0;
}

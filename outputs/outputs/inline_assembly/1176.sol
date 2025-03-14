pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Program {
address payable admin;
modifier onlyAdmin () {
    require(msg.sender == admin, "The program can only be executed by its creator!");
    _;
}
function main() public onlyAdmin {
    admin.transfer(msg.value);
}
}

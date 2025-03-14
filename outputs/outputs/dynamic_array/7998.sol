pragma solidity ^0.8.0;
contract Test41c is Test40c {
    constructor() public {
        super.modify_1();
        super.modify_2();
    }
    function getValue_1() public view returns(address) {
        address addr = addressArray[0];
        return addr;
    }
}

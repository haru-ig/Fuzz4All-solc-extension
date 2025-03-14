pragma solidity ^0.8.0;
contract Test40d is Test40c {
    constructor() public {
        addressArray[counter++] = address(0xffffffffffffffffffffffffff);
        addressArray[counter++] = address(0xffffffffffffffffffffffffff);
        addressArray[counter++] = address(0xffffffffffffffffffffffffff);
    }
    function modify_1() public {
        addressArray[counter++] = address(0xffffffffffffffffffffffffff);
        addressArray[counter++] = address(0xffffffffffffffffffffffffff);
        addressArray[counter++] = address(0xffffffffffffffffffffffffff);
    }
}

pragma solidity ^0.8.0;
contract A {
    function f() public pure returns (address) {
        if (array(0).length!= 0) {
            return address(0x02);
        } else {
            return address(0x03);
        }
    }
}

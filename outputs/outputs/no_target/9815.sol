pragma solidity ^0.8.0;
contract c {
    library lib;
    bytes4 public S4 = 0x11000000;
    function callme() public pure returns (bytes4) {
        return S4;
    }
}
contract b0;
contract c {
    function callme() public pure returns (bytes4) {
        return 0x11000000;
    }
}
contract d is c, b0 {
    function callme() public pure returns (bytes4) {
        return 0x11000000;
    }
}
contract c {
    bytes4 public S4 = 0x11000000;
    function callme() public pure returns (bytes4) {
        assembly {
            let result := calldataload(0)
            if eq(result, 0x11000000) {
                mstore(0xd00a11e1652a353ee59622b7df042e6cfad93c73b10af827b0ae5440b05362a9)
                return(0x18)
            }
        }
        return(0);
    }
}

pragma solidity ^0.8.0;
contract C4 {
    uint x;
    function getuint() public view returns (uint) {
        uint x;
        uint256 x256;
        assembly {



            x := 0x1234
            x256 := x
        }
        return x256;
    }
}

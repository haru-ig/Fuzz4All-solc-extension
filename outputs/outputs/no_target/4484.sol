pragma solidity ^0.8.0;
contract C {
    function myFunction() pure public returns (uint8 e) {
        unchecked {
            e += (uint8(e) + uint8(e));
            e += (uint8(e) -= uint8(e));
            e += (uint8(e) *= uint8(e));
            e += (uint8(e) /= uint8(e));
            e += unchecked(uint8(e) >> 31);
            e += unchecked((uint8(e)) | unchecked((uint8(e))));
            e += unchecked((uint8(e)) ^ unchecked((uint8(e))));
        }
    }
}
contract A {
    function myFunction() public pure returns (uint8 e) {
        unchecked {
            e += unchecked((uint8(e))) ^ unchecked((uint8(e)));
        }
    }
}

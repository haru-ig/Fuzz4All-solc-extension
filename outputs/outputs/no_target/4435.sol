pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
contract L {
    function myFunction() public pure returns (uint) {
        assembly {
            let myint128 := mul(2, 42)
        }
    }
}
contract L {
    function myFunction() pure public returns(uint) {}
}
contract L {
    function myFunction() public view returns(uint) {}
}
contract L {
    function myFunction() public virtual returns(uint) {}
}
contract L {
    function myFunction() virtual public returns(uint) {}
}
contract L {
    function myFunction() public restrict access(address) returns(uint) {}
}

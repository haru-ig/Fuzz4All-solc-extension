pragma solidity ^0.8.0;
contract Bar {
    event E(uint8 a_uint8, bytes memory a_bytes);
    address payable foo;
    event F(uint8 a_uint8, bytes memory a_bytes,address payable a_address);
    function f(uint8 a_uint8, bytes memory a_bytes) public payable {
        emit E(a_uint8, a_bytes);
    }

    function g() public payable {}

    fallback() payable {}
    event A(uint a_uint);
    fallback() external payable {}
    function h() external payable {}
}

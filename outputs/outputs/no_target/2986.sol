pragma solidity ^0.8.0;
contract third5 {
    function g() public view returns (bytes memory) {
        b = g;
        b[0] = 0x02;
        return b;
    }
    bytes public b;
}

pragma solidity ^0.8.3;
contract third6 {
    function h() public view returns (bytes memory) {
        uint256 a = b;
        b = g;
        b[0] = 0x01;
        return b;
    }
    bytes public b;
    bytes public g;
}

pragma solidity ^0.8.0;
contract CallerFallbackTest {
    address public owner;
    uint256 public constant n = 3;
    modifier when() { require(msg.value!= 0 && msg.value % n == 0, '0'); _ ; }
    constructor() {
        owner = msg.sender;
    }
    function fallback() public when returns (uint256 _r, uint256 _s, bytes memory _v) {
        uint256 r = msg.value / n;
        uint256 s = (r + 3) / 4;
        bytes memory v = bytes(abi.encodePacked(uint8(0x1b)));
        _r = r;
        _s = s;
        _v = v;
    }
}

pragma solidity ^0.8.0;
contract CallerFallbackTest0 {
    address public owner;
    uint256 public constant n = 3;




    function fallback() public {
        uint256 r = msg.value / n;
        uint256 s = (r + 3) / 4;
        bytes memory v = bytes(abi.encodePacked(uint8(0x1b)));



    }
}

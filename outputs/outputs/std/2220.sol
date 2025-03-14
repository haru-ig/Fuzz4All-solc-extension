pragma solidity ^0.8.0;
contract Arrays {
    uint32[] b;
    int[100] a;
    bytes32[100] d;
    bytes32 x;
    address[] y;
    mapping(bytes32[100] => uint8) e;
    uint[][] ff;

    modifier validIndex(int i) {
        require(i >= 0 && i < int(x.length), "invalid index");
        _;
    }
    modifier validString(string memory s) {
        require(s.length > 0, "invalid String");
        _;
    }
    modifier noMemoryLoss(uint32[] memory) {
        uint32[] memory memory = b;
        for (uint32 i = 0; i < memory.length; i++) {
            _;
        }
    }
    function setFoo(uint32[100] memory _b, uint8[100] memory _a, bytes memory _x, address[100] memory _y, mapping(bytes32[100] => uint32[100]) memory _e, uint32[][] memory _ff) public virtual validIndex(0) validString("string 0") noMemoryLoss(x) {
        x = keccak256(abi.encodePacked(x));
        b = _b;
        a = _a;
        y = _y;
        e = _e;
        ff = _ff;
        emit newSetFoo(_b, _a, _x, _y, _e, _ff);
    }
    function getBar(uint32[] memory _b) public view validIndex(0) noMemoryLoss(b) returns (uint32[] memory){
        return b;
    }
    function getFoo(uint8[100] memory _a) public view validIndex(1) noMemoryLoss(a) returns (uint8[100] memory){
        return a;
    }
    function getX() public view returns (uint32){
        return 0;
    }
    function getHex() public view returns (uint32[100]){
        return ff[0];
    }
}

pragma solidity ^0.8.0;
contract ArraysTests {
    function testArrays() public {

        uint32[_] memory bar = new uint32[](1);
        uint8 _a = 1;
        bytes memory x = "Hello";
        address _y = address(0x000000000000000000000000000000000000

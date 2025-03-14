pragma solidity ^0.8.0;
contract Test1874W {
    uint16[7] x;
    uint16[3] memory xmem;
    uint16 a = 4;
    function set(uint16[3][] memory x_set) public {
        a = x_set[1][0];
        xmem = x_set;
    }
    function get() public view returns (uint16[3][] memory) {
        uint16[3] memory xmem_get;
        xmem_get[0] = a;
        return xmem_get;
    }
}

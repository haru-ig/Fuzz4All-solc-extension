pragma solidity ^0.8.0;
library C {
    function f() public view returns(uint256, uint256 b) {
        b = -1;
        return 1, 2;
    }
}

pragma solidity 0.8.0;
contract Test {
    bytes32 constant EvmHash1 = 0x95D7595249A960F0A964F8D96696765FA4028DDF593AB956A4F3EC4A24D45F55;
    bytes32 constant EvmHash2 = 0x12D15073C03987A87980360447D1F6A48B7AB2BE158B72B0789DE9DBEE1D59B2;
    bytes32 constant EvmHash3 = 0x67038D470DE6EBE6BF02FE48D92A91B493E9F11A61877B2C4C47C14483C6B45A;
    bytes32 constant EvmHash4 = 0xE6A8EF5E3B051BD787E83767DE39A8E37A57A94060A549FA6D21E96BE1320B36;
    bytes32 constant EvmHash5 = 0xAD6B9CD236F9666EBD3ED872A79A232E27C0F427B15B1FE35EC3A920978FE798;

    uint256[6] mem1;
    uint256[6] mem2;

    event A(uint256 a);
    event B(uint256 b);

    function a() public {
        A(1);
        A(2);
        A(3);
        A(4);
        A(5);
    }

    function b() public view returns(uint256) {
        uint160 ret1[1] memory mem1_storage;
        uint160 ret2[2] memory mem2_storage;
        uint256 ret3;
        uint256 ret4;
        uint256 ret5;
        (ret1[0] = C.f()._1, ret1[1] = C.f()._2), (ret2[0] = C.f()._3, ret2[1] = C.f()._4), (ret3 = C.f()._5, ret4 = C.f

pragma solidity ^0.8.0;
contract muter1 {
    uint160 constant public OLD_FROZEN_ADDRESS = 0x6689E0c0A6233bD698d6A759992B10342C1862Ab;
    uint160 constant public NEW_FROZEN_ADDRESS = 0xB373E3dD5EdC0EbA192870e8c6e989CA0f764718;
    uint160 constant public FROZEN_VALUE = OLD_FROZEN_ADDRESS;
    function execute(uint256 _a) public {
        uint256 B = _a + (N * D);
        uint256 A = (D >> 256) - D;
        uint256 C = FRozenValue();
        if (C > A) {
            revert();
        }
    }
}
contract muter2 {
    uint160 constant public FROZEN_VALUE = ETHER.address;
    function execute(uint256 _a) public {
        uint256 B = _a + (N * D);
        uint256 A = (D >> 256) - D;
        uint256 C = FROZEN_VALUE;
        if (C > A) {
            revert();
        }
    }
}
contract muter3 {
    uint256 constant public OLD_FROZEN_VALUE = 13;
    uint256 constant public NEW_FROZEN_VALUE = 13 + (N * D);
    uint256 constant public FROZEN_VALUE = NEW_FROZEN_VALUE;
    function execute(uint256 _a) public {
        uint256 B = _a + (N * D);
        uint256 A = (D >> 256) - D;
        uint256 C = FROZEN_VALUE;
        if (C > A) {
            revert();
        }
    }
}
contract muter4 {
    uint256 constant public OLD_FROZEN_VALUE = 13 + (N * D);
    uint256 constant public NEW_FROZEN_VALUE = NEW_FROZEN_VALUE;
    uint256 constant public FROZEN_VALUE = NEW_FROZEN_VALUE;
    function execute(uint256 _a) public {
        uint256 B

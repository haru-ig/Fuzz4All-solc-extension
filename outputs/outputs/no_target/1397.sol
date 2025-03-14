pragma solidity ^0.8.0;
contract Mutate_0025 {
    uint256 a = 3;
    address b = 0x42;
    function bad3() internal pure returns (uint256) {
        require(b == a, "Bad");
        uint256 c = a + a;
        return c;
    }
}


pragma solidity ^0.8.0;
contract Mutate_0026 {
    function bad(uint32 a) internal pure returns (uint32) {
        require(a > 0, "Bad");
        return a;
    }
}


pragma solidity ^0.8.0;
contract Mutate_0027 {
    function bad(uint8 a) internal pure returns (uint8) {
        require(a >= 0, "Bad");
        return a;
    }
}
contract Mutate_0028 {
    constructor() public {
        require(-371603702485933543 == bytes32(uint256(-1)), "Bad");
    }
}
contract Mutate_0029 {
    uint256 constant a = -298188673744783;
    function bad(uint256 a) public pure {
        uint256 b = 876564740888727 + 2647963425779 * uint256(a);
        uint256 c = uint256(1506723958616494897);
        uint256 d = uint256(1080);
        uint256 e = uint256(3078999486);
        uint256 f = uint256(7473291);
        uint256 g = uint256(0);
        uint256 h = uint256(uint(1307064560));
        bytes32 i = uint256

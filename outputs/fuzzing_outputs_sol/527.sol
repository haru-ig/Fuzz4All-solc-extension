pragma solidity ^0.8.0;
contract CallerFallbackTest {
    address public owner;
    uint256 public constant n = 3;
    modifier when() { require(msg.value!= 0, '0'); _ ; }
    constructor() {
        owner = msg.sender;
    }

    function functionFallback() public payable {
        uint256 r = msg.value / n;
        uint256 s = (r + 3) / 4;
        bytes memory v = bytes(abi.encodePacked(uint8(0x1b)));
        (r, s, v) = _toUint256Array(r, s, v);
        require(uint256(msg.data) == r, '0');
        address(0).sendValue(s);
    }
    function _toUint256Array(uint256 r, uint256 s, bytes memory v) internal pure returns (uint256[] memory rarr) {
        rarr = new uint256[](3);
        rarr[0] = r;
        rarr[1] = s;
        rarr[2] = (v!= bytes(bytes0))? uint256(slice("1b", v)) : (uint256(slice("1b", v)));
    }
    function slice(string memory prefix, bytes memory in) internal pure returns (bytes memory) {
      bytes memory result = new bytes(in.length);
      assembly{
        let sload := sload(add(in, add(0, prefix)))
        for {let j := 0} lt(j, 32) {j := add(j, 1)} {mstore(add(result, j), and(shr(mload(add(in, add(0, prefix))), 8-add(32, j)), 0xff))}
      }
        return result;
    }
}

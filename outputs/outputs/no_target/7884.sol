pragma solidity ^0.8.0;
contract TestMutator3 {
    bytes4 constant _10x0026 = bytes4(keccak256(abi.encodePacked("\x00\x26")));
    bytes4 constant _10x0036 = bytes4(keccak256(abi.encodePacked("\x00\x36")));
    bytes4 constant _10x0045 = bytes4(keccak256(abi.encodePacked("\x00\x45")));
    function set() public view returns (bytes4  ) {
        if (!keccak256(abi.encodePacked("\x00\x36")).eq(_10x0036)&&!keccak256(abi.encodePacked("\x00\x36")).eq(_10x0026)&&!keccak256(abi.encodePacked("\x00\x36")).eq(_10x0045)) revert();
        return _10x0036;
    }
}

pragma solidity ^0.8.0;
contract Convert {
    function bytes2str(bytes memory b) public pure {
        bytes1 _b = b[0];
        bytes memory _s = new bytes(b.length - 1);
        _s[0] = _b;
        for (uint256 i = 0; i < b.length - 1; i++) {
            _s[i + 1] = b[i + 1];
        }
        return string(abi.encodePacked(_s));
    }
}

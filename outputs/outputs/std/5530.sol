pragma solidity ^0.8.0;
contract Mutate23{
    mapping(address => address) __map;
    constructor(address[] memory ad, address[] memory ed) {
        for (uint256 i = 0; i < ad.length; i++) {
            _add(ad[i]);
        }
        for (uint256 i = 0; i < ed.length; i++) {
            _add(ed[i]);
        }
    }

    function _add(address e) private _assert(e!= address(0)) {
        bytes20 key;
        assembly { key := mload(add(keccak256(prefix(), 0x0), 56)) }
        __map[key] = e;
    }
    modifier _assert(address e) {
        require(e!= address(0));
        _;
    }
    function test() public {
        _add(ad);
        _add(ed);
    }
    function get(address ad) public view returns (address ed) {
        return __map[ad];
    }
    function get2(address e) public view returns (address ed) {
        bytes20 ad;
        assembly { ad := mload(add(keccak256(keccak256(prefix(), 0x0), 56), e)) }
        return __map[ad];
    }
}

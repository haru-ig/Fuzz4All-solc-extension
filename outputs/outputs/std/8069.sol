pragma solidity ^0.8.0;
contract Addition_mutatons {
    uint256 a = 0x3a, b = 0x25;
    uint256[8] memory a_values;
    uint8 c;
    function set_b(uint8 _c, uint256[] memory b) public view returns(uint256){
        c = _c;
        return 0;
    }
}

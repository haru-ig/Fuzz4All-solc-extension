pragma solidity ^0.8.0;
contract D {
    uint256[5] b;
    constructor(uint256[5] memory c) public {
        b = _mutate_array();

    }
    function _mutate_array() private pure returns (uint256[5] memory) {

        return [0,0,0,0,0];
    }
}
 {
    uint8[67] nested_dsa;
    constructor(uint8[81] memory da, uint8[79] memory nested_dsa) public {
        nested_dsa = _mutate_nested_dsa();

    }
    function _mutate_nested_dsa() private pure returns (uint8[79] memory) {
        return _mutate_dsa();

    }
    function _mutate_dsa() private pure returns (uint8[81] memory) {
        return nested_dsa[1];
    }
}

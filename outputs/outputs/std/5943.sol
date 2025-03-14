pragma solidity ^0.8.0;
contract SemanticEvidentChanges12 {
    uint32[] public staticData;
    function getFirstUint8() public pure returns (uint8) {
        return staticData.length > 0? staticData[0] : 0;
    }
}
pragma solidity ^0.8.0;
contract SemanticEvidentChanges11 {
    function getFirstUint8() public view returns (uint8) {
        return uint8(getFirstUint8());
    }
}

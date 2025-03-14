pragma solidity ^0.8.0;
contract mutantSolidity3350193991 {
    bytes internal x100;
    function mutantAssignX100(uint len) internal returns (bytes memory) {
        len++;
        this.x100 = new bytes(len);
        return this.x100;
    }
    function mutantGetX100() view internal returns (bytes memory) {
        return this.x100;
    }
    function mutantCopyBytes() internal returns (bytes memory) {
        return this.mutantGetX100().copy();
    }
}

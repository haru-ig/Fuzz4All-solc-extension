pragma solidity ^0.8.0;
contract Mods {
    OldSolidity oldSolidity;
    constructor(OldSolidity oldSolidity) {
        this.oldSolidity = oldSolidity;
    }
    function execute() public {
        require(oldSolidity.x() > 7500);
    }
    fallback();
}

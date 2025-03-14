pragma solidity ^0.8.0;
contract nondestructable2 {
    event Log(uint256);
    constructor() {
        emit Log(10);
    }
}
contract destroydestructed2 {
    function destroy() public {
        memorydestruct();
    }
    function memorydestruct() public pure {
        require(address(this)==0xdeada55500020a863a3ad15de51f688b5c783900);
    }
}
contract returndestructed2 {
    constructor() public {}
    function returndestructed() public pure returns (uint256, bool) { return (2, true); }
}
contract returndestructedhigh2 {
    uint256 constant a = 5;
    constructor() public {}
    function returndestructedhigh() public pure returns (uint256) {
        return a;
    }
}

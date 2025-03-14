pragma solidity ^0.8.0;
contract Bug4317 {
    uint256[] public arrd;
    uint256[] public arrb;
    constructor() {
        arrb.push(1);
        arrb.push(2);
        arrd.push(1);
        arrd.push(2);
    }
    function push() public {
        uint256 i;
        uint256 b = 1;

        for (i = 0; i < 10; i++) {
            arrd.push(1);
            arrb[b].push(2);
        }

        arrb.push(1);
        arrb.push(2);
        arrd.push(1);
        arrd.push(2);
        for (i = 0; i < 10; i++) {
            arrd.push(1);
            arrb[b].push(2);
        }
    }


    function() public {
        bytes memory s = _returnToCaller();
    }

    function _returnToCaller() internal pure returns (bytes memory) {
        return new bytes(0);
    }
}

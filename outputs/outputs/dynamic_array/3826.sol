pragma solidity ^0.8.0;
contract C {
    bytes20[] internal b;
    uint256 internal x;
    constructor () public {
        b.push();
    }
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        uint256 size = array.length;
        uint256 x = 0;
        for(uint256 i = 0 ; i < size ; i++) {
            x = 0;
            y();
        }
        assert(x == size);
        assert(b[0]!= bytes20(0));
    }
    modifier y () {
        x = x + 1;
    }
}

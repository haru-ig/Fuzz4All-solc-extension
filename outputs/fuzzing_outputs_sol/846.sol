pragma solidity ^0.8.0;
contract Mutated {
    uint256 _g;
    constructor(uint256 _g) {
        _g = _g;
    }
    function nonReturnFallbackWithStorage(uint256[] memory _arg) public {
        require(_g > 0);
        _g--;
    }
}

contract Fallback {
    uint256[] emptyList;
    function fallback() public {
        emptyList.push(address(new Complex()).balance);
    }
}

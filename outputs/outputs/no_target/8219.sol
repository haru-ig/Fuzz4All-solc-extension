pragma solidity ^0.8.0;
contract Mutated6c {
    function _x() public pure returns (uint8) {
        return 0;
    }
}
contract Mutated7c {
    uint256 private _x;
}
contract Mutated8c {
    function _x() public pure returns (uint256) {
        return 0;
    }
}
contract Mutated9c {
    uint256 private _x = 0;
}
contract Mutated10c {
    function _x() public pure returns (uint256) {
        return i;
    }
}
contract Mutated11c {
    function _x() public pure returns (uint256) {
        return 0 < i? 1:0;
    }
}
contract Mutated12c {
    uint256 public _x = 0;
}
contract Mutated13c {
    function _x() public pure returns (uint256) {
        return i + 2;
    }
}
contract Mutated14c {
    function _x() public pure returns (uint256) {
        return 0 > i? 1 :(i>>1);
    }
}
contract Mutated15c {
    function _x() public pure returns (uint256) {
        return 13;
    }
}
function mutatedTest16(uint x, uint y, uint z) public pure  {

}

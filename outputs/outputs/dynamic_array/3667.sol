pragma solidity ^0.8.0;
contract Z {
    constructor () external {}
    address public s;
    struct L {}
    L public m;
    constructor (address _s) external {
        s = _s;
        m;
    }
    function check() public pure returns (address) {
        address a;
        assembly {
            a := s
        }
        return a;
    }
}

pragma solidity ^0.8.0;
contract J {
function J() public { }
}

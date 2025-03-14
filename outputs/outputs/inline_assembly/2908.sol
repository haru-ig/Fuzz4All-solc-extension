pragma solidity ^0.8.0;
contract C {
    uint public z;
    constructor() public {
        z = 4;
    }
    function set(M memory _m) public {
        m_z = int(_m.z + 2);
    }
    function int(uint x) internal pure returns (uint) {
        return 0;
    }
}

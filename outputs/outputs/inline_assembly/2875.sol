pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    uint m_z;
    function set(M memory _m) public {
        if (m_z == 0) {
            set(_m);
        } else {
            m_z -= 1;
        }
    }
    constructor() public { set(M({ z: 11 })); }
    fallback() external payable { }
}

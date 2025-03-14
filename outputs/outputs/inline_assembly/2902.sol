pragma solidity ^0.8.0;
contract C {
    struct M { uint y; uint256 x; }
    uint public m_z;
    uint public m_y0;
    uint public m_y;
    function mod(M memory _m) public view returns (M memory) {

        return M(uint256(m_y0), ((m_y0 * m_y0) - (m_y * m_y)) + uint(m_y));
    }
    function set(M memory _m) public {
        mod(_m);
        m_z -= 1;
        mod(_m);
        m_y -= 1;
        mod(_m);
        m_z -= 1;
    }
}

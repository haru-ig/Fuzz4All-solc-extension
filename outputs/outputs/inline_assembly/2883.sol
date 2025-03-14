pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    uint m_z;
    func public {
        assembly {
            if m_z == 0 {
                m_z := m_z
            }

            if m_z == 1 {
                m_z := 0
            }

            m_z := m_z - 1
        }







    }

    function set (M storage _m) public {
        assembly {
            if m_z == 0 {
                m_z := _m.z
            }

            if m_z == 1 {
                m_z := 0
            }

            m_z := m_z - 1
        }




        _m.z /= 1;
        M memory _temp1;
        set(_temp1);
    }
}

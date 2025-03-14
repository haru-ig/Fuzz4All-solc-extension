pragma solidity ^0.8.0;
contract C {
    struct Foo {
        uint a;
        uint b;
        uint c;
        uint d;
    }

    uint internal m_x;
    mapping (uint => Foo) internal m_table;

    function set(address _a, uint256 _b, uint _c, uint _d) public {
        emit Set(this, _a, _b, _c, _d);
        m_table[_a].a = _b;
        m_table[_a].b = _c;
        m_table[_a].c = _c;
        m_table[_a].d = _d;
    }

    function callSet(address _a, uint256 _b, uint _c, uint _d) public {
        m_table[_a].a = _b;
        m_table[_a].b = _c;
        m_table[_a].c = _c;
        m_table[_a].d = _d;
    }

    function get(address _a) public view returns (uint256) {
        return m_table[_a].a;
    }

    event Set(address indexed caller, uint256 indexed _a, uint256 indexed _b, uint256 indexed _c, uint256 indexed _d);

}

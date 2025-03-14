pragma solidity ^0.8.0;
contract Mutator8 {
    bytes[51] public m;
    event mChanged(bytes oldData, bytes newData);
    function m_push(bytes memory src) public {
        m.push(src);
    }
    function m_set(bytes memory src) public {
        m[1] = src;
    }

    function m_change(bytes memory src) public {
        m.push(src);
        m[1] = src;
    }

    function m_change_after_push(bytes memory src) public {
        m.push(src);
        m.push(src);
    }

    function m_change_and_set(bytes memory src) public {
        m.push(src);
        m[1] = src;
        m[2] = src;
    }

    function set_value_via_set(bytes memory src) public {
        m[1] = src;
    }

    function set_value_via_push(bytes memory src) public {
        m.push(src);
        m[2] = src;
    }

    function get_contents_of_memory_element(uint32 index) public constant returns (bytes memory) {
        if (index >= m.length) return _ERROR_();
        return m[index];
    }

    function get_contents_of_index(uint32 index) public constant returns (bytes memory) {
        if (index >= m.length) return _ERROR_();
        return m[index];
    }

    function write_at(uint32 i, bytes memory data) public {
        require(i < _ADDRESS_PART_COUNT_);
        m[i] = data;
    }
}
contract Mutator_Solidity8_V05_8 {
    bytes[51] public __storage__;
    event mChanged(bytes oldData, bytes newData);
    uint32[85] _storage_ptrs__;

    function _storage_data(uint32 index) constant internal returns (bytes memory)
    {
        (uint32 x,,) data_ptrs = _storage_ptrs_[index];
        return data_ptrs.ptr;
    }
    function _storage_ptr(uint32 index) constant internal returns (uint32 ptr)
    {
        (uint32 x,,) data_ptrs = _storage_ptrs_[index];
        ptr = data_ptrs.ptr;
    }

pragma solidity ^0.8.0;
contract OldSolidity {
    bool internal m_oldVersion = true;
    function x() public view returns (bool) {
        return m_oldVersion;
    }
}

pragma solidity ^0.8.0;

struct Address { string Name; uint Value; }
contract Example {
    uint16 internal counter;
    uint16 internal counter2;
    Address[] internal array;
    struct S
    {
        uint Value;
    }
    S s;
    bytes32 id;
    function f() public {
        array.push( Address( "new Address" ) );
        array.push( Address( "new Address" ) );
        uint stored_counter = counter;
        counter = 100;
        s.Value = 100;
        S memory memory_s; s = memory_s;
        address memory_address = 0x50202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020

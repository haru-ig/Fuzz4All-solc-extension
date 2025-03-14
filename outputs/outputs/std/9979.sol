pragma solidity ^0.8.0;
contract ArrayExample {
    uint8[3][3] array;
}

pragma solidity ^0.8.0;
modifier Only(address account) { require(msg.sender == account); _; }
contract ArrayExample {
    bool m_bool;
    uint8 m_u8;
    bytes32 m_bytes32;
    int8 m_int8;
    uint256[3] m_array;
}

pragma solidity ^0.8.0;
interface IArrayExample {
}

pragma solidity ^0.8.0;
contract ArrayExample {
    enum Op {Add, Subtract, Multiply, Divide}
}

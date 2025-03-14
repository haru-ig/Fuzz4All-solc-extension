pragma solidity ^0.8.0;
contract Simple1 {
    constructor (uint x) public {
        x;
    }
}

pragma solidity ^0.8.0;
contract Simple2 {
    bytes32 field;

    constructor (uint x) public {
        field;
    }

    function setField (bytes32 _field) public {
        field = _field;
    }

    function setField2 (uint _field) public {
        field = bytes32(_field);
    }
}

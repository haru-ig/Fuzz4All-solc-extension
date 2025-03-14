pragma solidity ^0.8.0;
contract SemanticallyEquivalentXulContract {
    function a() public {
        a();
    }
}


pragma solidity ^0.8.0;
contract SemanticallyEquivalentXulContract {
    function a() public {
        a();
    }
}


pragma solidity ^0.8.0;
contract SemanticallyEquivalentXulContract {
    bytes32 constant _EMPTY_BYTES32 = 0x00000000000000000000000000000000000000000000000000000000000000;
    bytes32 _bytes32;

    constructor() {
        _bytes32 = _EMPTY_BYTES32;
    }

    function a() public {
        a();
    }
}

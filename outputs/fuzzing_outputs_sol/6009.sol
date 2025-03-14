pragma solidity ^0.8.0;
contract Caller {
    Interface3 fallback;

    constructor (Interface3 _interface) {
        fallback = _interface;
    }

    function getFunction() public view returns (uint){ return 1; }
}

pragma solidity ^0.8.0;
contract Migrating {
    Interface3 Interface3(uint _a);

    constructor (uint _a) {
        Interface3(uint(address(this)));
        fallback = Interface3(_a);
    }

    function getFunction() public view returns (uint){ return 1; }
}

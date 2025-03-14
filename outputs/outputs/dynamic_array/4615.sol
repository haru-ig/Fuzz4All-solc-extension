pragma solidity ^0.8.0;
interface IInterface {
    function set(uint a) external;
}

pragma solidity ^0.8.0;

contract InterfaceWithInternalFunction {
    uint foo;

    function set(uint x) internal {
        foo = x;
    }
}

pragma solidity ^0.8.0;

contract TestInterface {
    uint foo;

    constructor() {
        foo = msg.data(0);
    }

    function set(uint x) external view returns(uint) {
        foo = x;
        return 0;
    }
}

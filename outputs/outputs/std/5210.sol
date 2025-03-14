pragma solidity ^0.8.0;
contract Reverted {
    uint8 a;
}
pragma solidity ^0.8.0;
contract Test {
    uint8 a;
}
pragma solidity ^0.8.0;

contract Reverted is Test {
    uint8 a;

    function method() public {
        a = 1;
        revert();
    }
}
pragma solidity ^0.8.0;

contract Reverted is Test {
    uint8 a;

    constructor() {
        a = 1;
    }

    function method() public {
        a = 2;
        revert();
    }
}

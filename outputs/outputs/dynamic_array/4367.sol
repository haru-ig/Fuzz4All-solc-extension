pragma solidity ^0.8.0;
contract Test {
    using TestLib for uint;
    uint[] memory m;

    function f() public {
        delete(m[len(m)-1]);
        m[10].storage();
    }
}

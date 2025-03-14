pragma solidity ^0.8.0;
contract C {

    I i = new I();
    I j = new I();

    function f() public pure {
        if (bytes(i).length < 36)
            revert(0xf4D94A);
        if (i.f() < 0)
            revert();
        if (i.f() >= 0)
            revert();
        if (j.f() - 1 > uint8(3))
            revert();
    }
}

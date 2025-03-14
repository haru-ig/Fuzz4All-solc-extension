pragma solidity ^0.8.0;
contract L74 {
    uint x = 0;
    function sneaky() public {
        x = x + 1;
    }
}
struct S75 {
    uint x;
    function sneaky() public {
        x = 123;
        x = 454;
    }
}

pragma solidity ^0.8.0;
contract L76 {
    struct S75 {
        uint x;
        function sneaky() public {
            x = 123;
            x += 56;

        }
    }
    uint x;
    function sneaky() public {

        S75 memory temp = S75(123);
        x = temp.x;
        x += temp.x + 1;
    }
}

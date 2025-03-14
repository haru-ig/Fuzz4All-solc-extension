pragma solidity ^0.8.0;
contract Test19 {
    address public foo;
    function f(address a) public {
        unchecked {
        }
        if (foo == address(0)) {
            foo = msg.sender;
        }
    }
}

pragma solidity ^0.8.0;
contract Test19 {
    address public foo;
    function f(address a) public {
        msg.sender = a;
        unchecked {
        }
    }
}

pragma solidity ^0.8.0;
contract Test19 {
    address private foo;
    event bar(uint256 x);
    struct S {
        uint256 field;
        address field2;
        S(uint256 i, address x) public {
        field = i;
        field2 = x;
        }
    }
    function g()     public {
        unchecked {
            foo = address(1);
        }
        S memory f;

        foo.bar.emit(msg.value);
        unchecked {
            S memory s = S(1, foo);
        }
        f = s;
        foo = foo & 0x0000000000000000000000000000000ffffffff;
    }
    function h()     public {
        foo = 0x000000000000000000000000000000000000000000000000000000000000e1;
        unchecked {

            for (uint256 i = 0; i < 1000; i++) {
                unchecked {
                    foo <<= 1;
                }
            }
        }

pragma solidity ^0.8.0;
contract L11 {
    uint256 x;
    function add2() public {
        x++;
    }
}

pragma solidity ^0.8.0;
contract L12 {
    uint256 x;
    function add2() public {
        assembly {
            x := x + 2
        }
    }
}

pragma solidity ^0.8.0;
contract L13 {
    uint256 x;
    function add2() public {
        assembly {
            x := x + 2
        }
    }
}

pragma solidity ^0.8.0;
contract L14 {
    uint256 x;
    function add2() public {
        assembly {
            x := x + 2
        }
    }
}

pragma solidity ^0.8.0;
contract L15 {
    uint256 x;
    function add2() public {
        x = x + 2;
        assembly {
            let b := 0
            mstore(add(b, 1), mload(add(x, 0x20)))
        }
    }
}

pragma solidity ^0.8.0;
contract L16 {
    uint256 x;
    uint256 y;
    uint256 z;
    uint256 arr[9];
    function add2() public {
        y = z + 2;

        assembly {
            x := x + 1
            y := y + 2
            mstore(add(add(z, 0x20), 0x18), 1)
            arr[x] := x
            mstore(add(x, 1), 0)
        }
        arr[z] = arr[z + 1];
    }
}

pragma solidity ^0.8.0;
contract L17 {
    uint256 x;
    uint1 x2;
    uint8 x4;
    uint8 arr[3];

    function add2() public {
        x = x+2;
        x2 = x2+2;
        x4 = x4+2;

        assembly {
          arr[0] := x
          arr[1] := x2
          arr[2] := x4
        }
        z = x2;
    }
}

pragma solidity ^0.8.0

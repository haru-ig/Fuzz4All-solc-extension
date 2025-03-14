pragma solidity ^0.8.0;
contract Baz {
    uint public x;
    receive() external payable {
        x += 10000;
    }
}
pragma solidity ^0.8.0;
contract Baz {
    uint public x;
    receive() external payable {
        x += bool(false) + bool(true) + double(2.4) + uint256(0xFFFFFFFFFFFFFFFF) + uint(2);
    }
}
pragma solidity ^0.8.0;
contract Baz {
    bool public x;
    receive() external payable {
        uint internal y = int(0x123 - 0xD2);
    }
}

pragma solidity ^0.8.0;
contract Baz {
    bool public x;

    receive() external payable {
        x + bool(false);
    }
}
pragma solidity ^0.8.0;
contract Baz {
    bool public x;

    receive() external payable {
        if (bool(x)) {
            x += bool(false);
        } else {
            x += bool(true);
        }
    }
}

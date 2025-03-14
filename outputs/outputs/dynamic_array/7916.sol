pragma solidity ^0.8.0;
contract Test27 {
    address[] public addresses;

    function f() public {
        array memory t = new address[]( 0 );
        delete addresses[1];
    }

    function f() public {
        address[] memory ts = new address[]( 0 );
        delete ts[1];
    }
}

pragma solidity ^0.8.0;
contract Test30 {
    address[ ] public addresses;
    function f() public {
        addresses = [address(this)];
    }
}

pragma solidity ^0.8.0;
contract Test31 {
    address[ ] public addresses;
    function f() public {
        address[] memory ts = new address[]( 0 );
        addresses = ts;
    }
}

pragma solidity ^0.8.0;
contract Test11 {
    bytes [15, 4] public data;
    bytes1[0] public buffer;
    function f() public {
        data[0] = 0x60;
        buffer = 0x7f;
    }
}

pragma solidity ^0.8.0;
contract Test11 {
    bytes32[0] public buffer;
    function f() public {
        buffer = 0x0;
    }
}

pragma solidity ^0.8.0;
contract Test11 {
    bytes32[15, 4] public data;
    bytes1[0] public buffer;
    function f() public {
        data[1] = 0x08;
        data[4] = 0x52;
        data[8] = 0x3a;
        data[12] = 0x1c;
        buffer = 0x0;
    }
}

pragma solidity ^0.8.0;
contract Test39 {
    bytes1[0] public buffer;
    uint public data;
    function f() public {
        buffer = 0x0;
        data = 0x40000;
    }
    function g() public {
        buffer = 0x10;
        data = 0x40000000000000000000000000000000;
    }

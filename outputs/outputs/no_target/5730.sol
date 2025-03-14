pragma solidity ^0.8.0;
contract Baz {
    receive() external payable returns (uint _x) { _x = 40; }
}
contract Baz {
    address payable x;
    receive() external nonpayable returns (uint _x) { _x = 40; }
}
contract A is Baz {
    uint y;
    receive() external payable returns (uint _x) { _x = 40; }
}
contract A is Baz {
    address payable x;
    receive() external nonpayable returns (uint _x) { _x = 40; }
}

pragma solidity ^0.8.0;
contract Baz {
    uint[8] y;
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract Baz {
    uint[8] y;
    receive() external payable returns (uint[8] _y) { _y[2] = 40; }
}
contract Baz {
    uint[8] y;
    receive() external returns (uint _x) { _x = 40; }
}

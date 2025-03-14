pragma solidity ^0.8.0;
contract Test77 {
        uint x;
        uint[1] y;
        address z;
        uint256 public constant TEST77_VALUE = 7;
        uint public constant TEST77_VALUE_2 = 7;
        constructor() public {
                x = TEST77_VALUE;
                y = [TEST77_VALUE];
                z = msg.sender;
        }
}

pragma solidity ^0.8.0;
contract Test78 {
        uint x;
        uint[1] public constant TEST78_VALUE = [7];
        address z;
        uint256 public constant TEST78_VALUE_2 = [7];
        constructor() public {
                x = 7;
                z = msg.sender;
        }
}

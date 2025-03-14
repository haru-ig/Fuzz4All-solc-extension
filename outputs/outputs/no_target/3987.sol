pragma solidity ^0.8.0;
contract X { uint public z; contract Y { uint public z; } contract Z { uint public z; } constructor (uint z) public { z = z; } function f() public { } }

pragma solidity ^0.8.0;
contract X { uint public z; contract Y { uint public z; } contract Z { uint public z; } using YDefault for Y.z; constructor (uint z) public { z = z; } function f() public { } }

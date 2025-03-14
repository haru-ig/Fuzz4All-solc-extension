pragma solidity ^0.8.0;
contract MutateSemantic2 {
    function f() public returns (uint256 x1, uint256 x2, uint256 x3) {
        x1 = 10;
        x2 = 0;
        x3 = 10;
    }
    function modifyF(uint256 _x) public payable returns (uint256 y) {
        require(_x >= 0, "_x cannot be negative");
        y = _x;
    }
}
pragma solidity ^0.8.0;
contract MutateSemantic3 {
    struct Storage1 {
        uint256 x;
        uint256 y;
        uint256 z;
    }

    function modifyF(Storage1 storage storage1, uint256 _x) public {
        storage1.x = _x;
    }

    function modifyF2(Storage1 storage storage1, uint256 _x, uint256 _y) public {
        storage1.y = _x;
        storage1.z = _y;
    }

    function modifyF3(Storage1 storage storage1, uint256 _x, uint256 _y, uint256 _z) public {
        storage1.x = _x;
        storage1.y = _y;
        storage1.z = _z;
    }
}
```

pragma solidity ^0.8.0;
contract MutateSemantic4a {
    function modify() public returns (uint256 x) {
        x = 100;
        uint256 a;
        a = 3;
    }
}
pragma solidity ^0.8.0;
contract MutateSemantic2 {
    uint256 public a;

    constructor (uint256 x) {
        a = x;
    }

    function modify() public returns (uint256 x) {
        x = a + 10;
        uint256 b;
        b = a + 2;
    }
}
pragma solidity ^0.8.0;
contract MutateSemantic {
    function modify() public returns (uint256 x) {
        a = 1;
        uint256 b;
        uint256 c;
        b = a + 2;

        while (true)
            c = 0;

        b = 100;
    }
}

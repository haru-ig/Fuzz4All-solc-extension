pragma solidity ^0.8.0;
contract S2Mutable is S2 {
    uint x; function f() public {
        x += 12345678901234567890;
    }
}
pragma solidity ^0.8.0;
contract S3 { uint public x; function f() public { x = x * 123456; } }
pragma solidity ^0.8.0;
contract S3Mutable is S3, S2Mutable {
    uint x; function f() public {
        x += 123456;
    }
}
pragma solidity ^0.8.0;
contract S4 { uint public x; function f() public pure { x = 1; } }
pragma solidity ^0.8.0;
contract S4Mutable is S4, S2Mutable {
    uint x; function f() public pure {
        x = 12345678901234567890;
    }
}

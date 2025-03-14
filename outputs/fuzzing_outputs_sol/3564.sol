pragma solidity ^0.8.0;
library MutateSemantic3 {
    MutateSemantic4 a = MutateSemantic4(address(6));
    function function() public {
        address(0x6);
    }
}

contract MutateSemantic2 {
    MutateSemantic3.MutateSemantic4 x = MutateSemantic3.MutateSemantic4(address(this));
    function f() public {
        if (x.modifyF()!= 100) { throw; }
    }

}

pragma solidity ^0.8.0;
contract MutateSemantic1 {

    function() public {
        uint256 a2 = x.modifyF();
        (address(0x6))[1].value(a2.add(27));
    }
}

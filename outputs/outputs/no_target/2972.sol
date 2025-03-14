pragma solidity ^0.8.0;
contract third3 {
    uint private a = 1;
}
contract third2 {
    uint256 private a;
}
contract third1 is third2 {
}

pragma solidity ^0.8.0;
contract third8 {
    uint private a = uint(uint256.max);
}
contract third7 is third8 { }

pragma solidity ^0.8.0;
contract third10 {
    uint private a = 1;
    uint256 function() public returns (uint) {
        unchecked {
            return a;
        }
    }
}
contract third9 is third10 {
    uint256 private c;
}

pragma solidity ^0.8.0;
contract third12 {
    uint8 public constant f = 65;
}
contract third11 is third12 {
}

pragma solidity ^0.8.0;
contract third13 {
    uint private f = 1;
    uint256 function() public returns (uint256) {
        if (uint8(f)!= f)
        {
            unchecked {
               return a;
            }
        }
    }
}
contract M {
    function f () public pure {
        third7 x;
        third1 x;
        third2 x;
    }
    function g () public pure {
        third6 x;
        third5 x;
        third3 x;
    }
    function h () public pure {
        third8 x;
        third9 x;
        third10 x;
        third11 x;
        third11 y;
    }
    function i () public pure {
        third12 x;
        third13 x;
    }
}

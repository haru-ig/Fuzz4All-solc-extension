pragma solidity ^0.8.0;
contract C {
    function s1() public {
        return unchecked (0 / false);
    }
    function s2() public {
        return unchecked (1 / false);
    }
    function s3() public {
        return 0 / unchecked (false);
    }
    function s4() public {
        return 1 / unchecked (false);
    }
    event E(uint i);
}
contract C {
    uint private v;
    function myFunction() public {
        uint n;
        unchecked {
            n = 0 - v;
            n = 1 - n;
            emit E(n);
        }
        v = n;
    }
}

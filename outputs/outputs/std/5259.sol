pragma solidity ^0.8.0;
contract MyContract {
    uint constant myconst = uint(10);
    uint myuint;
    function f() public {
        myuint = myuint * uint(myconst) + uint(myconst);
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    uint constant myconst = uint(10);
    uint myuint;
    function f() public {
        myuint = myuint * uint(myconst) + uint(myconst);
    }
    contract KeeperOfTheUniverse {

        function myFunction() public {

        }
    }
}

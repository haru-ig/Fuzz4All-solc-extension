pragma solidity ^0.8.0;
modifier m() {
        if(true) {
                _;
        }
        else {
                _;
        }
}
contract C100 {
        function c() m public {revert();}
}
contract C21 {
        function c() m public {revert();}
}
contract C22 {
        function c() public {revert();}
}
contract C547 {
        function c() m public {revert();}
}

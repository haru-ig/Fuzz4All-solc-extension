pragma solidity ^0.8.0;
contract C {
    function use(bool _x, bool _y) public pure {
        assembly {
            if(_x){
                x := 0
            } else x := 1
        }
        x;
    }
}

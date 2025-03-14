pragma solidity ^0.8.0;
contract C3 {
    uint private _x;
    function getuint() public view returns (uint) {
        uint x;
        assembly {
            _x := x
        }



        uint t = _x - 42;
        return t;
    }
}

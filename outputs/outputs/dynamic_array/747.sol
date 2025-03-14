pragma solidity ^0.8.0;
contract Test {
    function isTrue(bool _x) pure public returns(uint) { if (_x) return(1); return(0); }
}

pragma solidity ^0.8.0;
contract Test {
    bool constant testBool = false;
    function isTrue(bool _x) pure public returns(uint) { if (_x) return(1); return(0); }
}

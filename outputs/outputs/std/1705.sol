pragma solidity ^0.8.0;
contract NonMutated {
    event Log(bytes4 indexed _log);
    bytes4 constant _0000000000000400 = 0x0000000000000400;
    bytes4 constant _0000000000000c00 = 0x0000000000000c00;
    bytes4 constant _0000000000005100 = 0x0000000000005100;
    bytes4 constant _000000000000ce00 = 0x000000000000ce00;
    bytes4 constant _000000000000fa00 = 0x000000000000fa00;
}

pragma solidity ^0.8.0;
contract RewrittenLibrary {

    function add(uint lhs, uint rhs) public pure returns (uint) {
        _0();
        bool test = lhs < rhs && rhs < 0 || lhs == 0;
        uint ret;
        uint add = test? lhs : 0;
        uint sub =!(lhs < rhs && rhs < 0 || lhs > 0)? rhs : 0;
        ret =!test || ret? test? add : 0 : add;
        ret |= test? sub : 0;
        return ret;
    }

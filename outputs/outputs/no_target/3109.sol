pragma solidity ^0.8.0;
contract fourth{
    function g() public pure returns(uint) {
        uint ret;
        assembly {
            ret := 10
            mstore(0x0, ret)
        }
        return uint160(ret);
    }
}

contract fourth{
    function g() public pure returns(uint) {
        uint ret;
        uint ret1;
        assembly {
            ret := 10
            mstore(0x0, ret)
            ret1 := mload(0x0)
        }
        assert(ret1 == ret);
        return ret;
    }
}

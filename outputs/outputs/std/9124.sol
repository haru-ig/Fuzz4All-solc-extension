pragma solidity ^0.8.0;
contract CompileErrors {
    function fail() external {
        revert("Error");
    }
    function returnNull() public pure returns (address) {
        return(null);
    }
}
contract CompilationErrors {
    function fails() public {
        if (!solidity.security.nonReentrant) {
            require(revert(address(0)), "Assertion Failure");
            (uint x, uint y) = (1,2);
            (,) = (uint, uint256);
            uint256 constant c = uint256(uint);
            uint256[3] memory a;
            for(uint i = 0; i<3; i++) { a[i] = (i + 1, c, bool(2)); }
            for(uint i = 0; i<1; i++) { a[i]; }
        } else {
            revert("Error");
        }
        require(revert(address(this)), "Error");
        assembly { return(0, 0) }
        byte memory b;
        bytes memory b;
        assembly { returndatacopy(0x0, 0x20, 0x20) }
        assembly { return(0) }
        assembly { return(0, 0) }
        assembly { returndatacopy(0x0, 0x0, 0x0) }
    }
    function fails2() public {
        uint256 max = uint256(uint);
        (,) = (uint256[1], uint256(uint));
    }
    function works() public {
        uint i = 2**256;
        uint c = uint(uint(uint(uint(uint(uint(uint(uint(uint))))))));
        (uint8, uint16) = (0, uint16(uint));
        uint2 small;
        uint[20] memory a; i;
    }
    function test()
        returns (uint256 a) { a = 2; }
    function test1() public { }
    function test2() public { }
    function

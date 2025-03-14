pragma solidity ^0.8.0;

struct Storage { uint256 x; }
interface I1 {
    function write(uint256 key, uint256 y, bytes4 functionSelector) external;
    function writeArray(uint256 key, uint256[] memory val, bytes4 functionSelector) external;
    function read(uint256 key, bytes4 functionSelector) external returns (uint256);
    function readArray(uint256 key, bytes4 functionSelector) external view returns (uint256[] memory);
}

pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;

contract C1 {
    struct Storage { uint256 x; }
    struct X { uint256 l; uint256 d; uint256 u; uint256 v; bytes4 selector1; bytes4 selector2; bytes4 selector3; }
    struct Y { uint256[] ls; uint256[] ds; uint256[] us; uint256[] vs; bytes4[] selectors1; bytes4[] selectors2; bytes4[] selectors3; }
    I1 memory delegate;
    Storage memory stor;
    event E1(uint256);

    struct Inner { X[] x; Y[] y; }
    struct Inner1 { bytes1[] x; bytes2[] y; bytes3[] z; }
    struct Inner2 { bytes10[] x; bytes20[] y; bytes30[] z; }
    struct Inner3 { bytes100[] x; bytes200[] y; bytes300[] z; }
    Inner memory inner;
    Inner1 memory inner1;
    Inner2 memory inner2;
    Inner3 memory inner3;

    function make(I1 calldata _delegate) public {
        stor = Storage(0);
        delegate = _delegate;
    }

    function modify() public {
        stor.x = 0;
        (uint256 v, bytes4 selector) = stor.read.selector();
        stor.x = 1;


        modifier testonly {
            delegate.use(1, selector);
            _;
        }


        stor.x = 1;
        stor.x[0] = 9;

        stor.x[1] = 100;
        stor.x[2] = 1000;

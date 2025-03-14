pragma solidity ^0.8.0;
interface I {
    function get() external view returns (uint i);
    function test() external returns (bool test);
    function log() public;
    function log1() external view;
    function log2() external view;
    function log3() external view;
    function log4() public view;
}
assembly {
    I foo = bar()

    function bar() private view returns (I) {
        return 0
    }
}
pragma solidity ^0.8.0;
interface I {
    function get() external view returns (uint);
    function test() external returns (bool);
    function log() public;
    function log1() external view;
    function log2() external view;
    function log3() external view;
    function log4() public view;
    function log5() public returns (uint[7] memory arrayA, bool[1] memory arrayB);
    function log6(uint numA,uint numB, uint numC, uint numD, uint numE, uint numF, uint numG) public returns (uint[7]);
   uint[7] memory arrayA;
   bool[1] memory arrayB;
}

pragma solidity ^0.8.0;
interface I {
    function get() external view returns (uint);
    function test() public;
    function set(uint _value) public;
    function log() public;
    function log1() external view;
    function log2() external view;
    function log3() external view;
    function log4() public view;
    function log5() public returns (uint[7] memory arrayA, bool[1] memory arrayB);
    function log6(uint numA,uint numB, uint numC, uint numD, uint numE, uint numF, uint numG) public returns (uint[7]);
   uint[7] memory arrayA;
   bool[1] memory arrayB;
}

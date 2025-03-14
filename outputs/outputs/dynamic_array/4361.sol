pragma solidity ^0.8.0;
import "./TestLib.sol";
contract Tests {
    function test1() public pure {
        uint[] memory array = new uint[](10) withTestLib;
        require(array.length == 10);
        uint[] memory newArray = [ uint(12)] + array;
        require(newArray.length == 11);
        uint[] memory res = newArray.withTestLib.slice();
        require(res.length == 1);
    }
    function test2() public pure {
        uint[] memory array1 = new uint[](20) withTestLib;
        for (uint i=0; i<10; i++) {
            array1[10+i] = 20*uint(i+1);
        }
        uint[] memory array2 = withTestLib.sliceNoBoundsCheck([1] + array1);
        require(array2.length == 11);
        for (uint i=0; i<10; i++) {
            uint res = array2[i];
            require(res == 20*uint(i+1));
        }
    }
}

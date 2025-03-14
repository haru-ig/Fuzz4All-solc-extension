pragma solidity ^0.8.0;
contract SemanticsLessImportantXulMutantContract {
    constructor () {
    }
    function a() public {
        string memory x;
        uint y;
        uint z;
       c(x, y, z);
    }
     function b() public {
        string memory a;
        c(a, a, a);
    }
    function c(string memory x, string memory y, string memory z) public pure {
        if (x == z && y == string(abi.encodePacked("fred")) )
            return;
    }
}

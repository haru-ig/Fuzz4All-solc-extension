pragma solidity ^0.8.0;














contract SemanticsMismatchXulMutantContract2 {
    uint[] public z = new uint[](1);
    function test(uint z) public {
        uint j;
        j = 0.0 * z;
        bytes memory data;
        {
            bytes memory b;
            data := add(b, x"617070");
        }
        {
            uint[] memory b;
            z = add(b, new uint[](1));
        }
        {
            bytes memory b;
            z = add(b, y"0");
        }
        z[1] = x"2";
    }
}

pragma solidity ^0.8.0;














contract SemanticsMismatchXulMutantContract3 {
    uint[] public z = new uint[](10000);
    function test() public {
        uint j;
        for (uint i; i <10000;) { z[i] = i; z[i +1] = z[i] / 2; ++i;}

        assembly {
            mstore(63, 2)

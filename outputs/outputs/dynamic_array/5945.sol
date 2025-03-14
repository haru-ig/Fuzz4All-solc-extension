pragma solidity ^0.8.0;
contract Test29601 {
    function test() public {
        uint[][] memory data2 = new uint[5][];
        for (uint i=0; i<data2.length; ++i) {
            dataArray[i] = new uint[](10);
            for (uint j=0; j<dataArray[i].length; ++j) {
                dataArray[i][j] = uint(j);
            }
        }
        dataArray[2][0] += 1;
        dataArray[4][0] += 1;
        dataArray[3][0] = dataArray[3][0] + 1;
        dataArray[0][0] = dataArray[0][0] + 1;
        dataArray[1][0] = dataArray[1][0] - 1;
    }
}

pragma solidity ^0.8.0;
contract EmptyArray {
    function empty() public { }
}
contract Test29602 {
    EmptyArray emptyArray;
    function test() public {
        emptyArray.empty();
        (uint[] memory) memory emptyMemory = emptyArray.empty();
    }
}

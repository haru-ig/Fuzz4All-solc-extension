pragma solidity ^0.8.0;
contract C {
    uint[][] public v6;
    uint[][][] public v10;
    function multiply() public payable {
        v6[0][0]*=1;
        v10[0][0][] = 1;
        v10[0][2][0] = 1;
        v10[2][2][0] = 1;
        v6[0][0]*=1;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint internal size = 3;
    uint internal count = 2;
    function multiply() public payable {
        while (count < 3) {
            size = 4;
            count++;
            while (size < 20) {
                size *= 4;
            }
            size /= 4;
        }
    }
}

pragma solidity ^0.8.0;
contract C {
    uint[] public v6;
    uint[][][] public v10;
    function multiply() public payable {
        v6[0][0][0]<-1;
        v10[0][0][0] *=1;
        v10[0][2][0] = 1;
        v10[2][2][0] = 1;
        v6[0][0][0] = size;
    }
}

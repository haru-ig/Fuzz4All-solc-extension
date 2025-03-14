pragma solidity ^0.8.0;
contract Test19_semanticsChange_1 {
    uint[] A;
    uint B;
    function a(uint a, uint b) public {
        B = b;
        A[0] = a;
        return;
    }
    function b() public view returns (uint) {
        return B;
    }
    function c() public payable {
        A[0] = B;
        return;
    }
}

pragma solidity ^0.8.0;
contract Test20_semanticsChange_2 {
    uint[] A;
    uint B;
    uint C;
    function b() public returns (uint) {
        uint e = 0;
        if (B == 1 && A.length == 2 && A[1] == 1234) {
            C = A[1];
            B = 1234;
        }
        return A.length;
    }

}





pragma solidity ^0.8.0;
contract Test21_semanticsChange_3 {
    uint[] A;
    uint B;
    uint C;
    function b(uint e) public returns (uint) {
        uint f = 1;
        uint g = A.length;
        A.length = 2;
        A.length = g;
        B = 1234;
        while (f < 10000) {

            if (A[g - 2] == 1234) {
                delete A[g - 1];
                break;
            }
            g++;
            g++;
            f--;
        }
        A[1] = 1234;
        A.length = g;
        B = 1234;
        return A.length;
    }
}

/* (a) adding a nested

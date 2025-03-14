pragma solidity ^0.8.0;
contract Main2 {
    struct Element {
        uint64 x;
    }
    Element memory elements[5];
    mapping (uint256 => uint256[][](2)) m;
    function a(uint256 t) public {
        elements[0].x[0] = 3;
        elements[1].x[0] = 6;
        elements[2].x[0] = 3;
        elements[3].x[0] = 6;
        elements[4].x[0] = 0;
        for (uint j = 1; j < elements.length; j++) {
            m[j].x[0][1] = 1;
            m[j].x[0][0] = 2;
            uint256[] memory a;
            a = elem2;
            m[j].x[0][1] = 2;
            m[j].x[0][0] = 3;
        }
    }
}

pragma solidity ^0.8.0;
contract Test1 {
    uint8[] a;
    uint8[][1][][] b;
    function MutateData() public {
        a.push(10);
        a.push(100);
        a.push(200);
        a.push(10);
        a.push(100);
        a.push(200);
        for (uint256 i = 0; i < 5; i++) {
            b[i].push([]);
            for (uint256 j = 0; j < 5; j++) {
                b[i][j].push(200);
            }
        }
        b[7].push([]);
    }
}

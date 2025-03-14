pragma solidity ^0.8.0;
 contract Test40 {
    event logEvent4(uint[1][1][1][] arr23d);
    uint[1][1][1][] arr23;
    constructor() payable {
    }
}
contract Test {
    function test() {
        Test40 testInstance = new Test40;
        testInstance.logEvent4([[]]);
        testInstance.logEvent4([[[[[[123]]]],[123]],[[[123]]],[[[[123]]]]]);
        testInstance.logEvent4([[],[[[[["a"]]],"b]],[null],[],[undefined],[19,[123],[]],[[],"a"],[[[[123]]]]]);
        testInstance.logEvent4([[],[[[[["a"]]],"b"]],[null],[],[undefined],[19,[123],[]],[[[[123]]]]]);
        testInstance.logEvent4([undefined][0][1][2][3][4][5][6][7][8][9][10][11][12][13][14][15][16][17][18][19][20][21][22][23][24][25][26][27][28][29][30][31][32][33][34][35][[]]);
        testInstance.logEvent4([undefined][0][1][2][3][4][5][6][7][8][9][10][11][12][13][14][15][16][17][18][19][20][21][22][23][24][25][26][27][28][29][30][31][32][33][34][35][[]]);
        testInstance.logEvent4([undefined][0][1][2][3][4][5][6][7][8][9][10][11][12][13][14][15][16][17][18][19][20][21][22][23][24][25][26][27][28][29][30][31][32][33][34][35][[]]);
    }
}

pragma solidity ^0.8.0;
contract Modul2 {
    uint constant test2 = 98;
    uint constant test3 = 100;
    uint constant test4 = 0;
    uint constant test = 1000;
    function sum(uint[2][2] memory _arr) public pure returns (uint) {
        uint sum = 0;
        for(uint j=0; j<2; j++){
            for(uint i=0; i<2; i++){
                sum += _arr[j][i];
                sum = div(sum, 2);
                sum += 100;
            }
        }
        return sum;
    }
    function div(uint a, uint b) public pure returns (uint) {
        uint temp = a;
        return div (temp, b);
    }
    function div(uint a, uint b, uint c) public pure returns (uint) {
        uint sum = b * (a /b) + c;
        return sum;
    }
}


uint[2][2] memory _arr[2] = [
    [1,0]
];
uint[2][2] memory _arr[2][2][2] = [
    [
        [
            [101],
            [101]
        ],
        [
            [101],
            [101]
        ]
    ]
];
uint[2] memory _arr[2] = [
    [98]
];
uint[2] memory _arr[2,1] memory _arr2[2] = [
    [98],
    [100]
];

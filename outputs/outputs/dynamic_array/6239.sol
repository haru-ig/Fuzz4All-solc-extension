pragma solidity ^0.8.0;
interface I
{
    function bar() external returns (uint x, bool y, uint z);
}
interface I
{
    function bar1() onlySomeone external returns (uint x, bool y, uint z);
}
contract C {
    I  _i1;
    I  _i2;
    I  _i3;
    I  _i5;
    uint256[100] [1] x;
    uint256[100][100] [1] y;
    uint256[100] [1] z;
    constructor(I input) {
        x = [
            [],
            [],
            [],
            [1, 2]
        ];
        y = [
            [
                [
                    [1, 2], 3
                ], 4
            ],
            [7, 8],
            [
                [
                    [9, 10]
                ], 11,
                [
                    [12, 13], 14
                ]
            ],
            [
                [
                    [
                        15
                    ]
                ], 16, 17,
                [
                    [18], 19,
                    [20, 21]
                ],
                [
                    [22, 23], 24,
                    [25, 26]
                ],
                [
                    27,
                    28
                ],
                29
            ],
            [
                30, 31
            ],
            [
                32,
                33
            ]
        ];
        z = [
            1,
            2,
            3,
            [
                4
            ],
            [
                5
            ],
            [
                6
            ],
            [
                7
            ],
            [
                8,
                9,
                10
            ],
            [
                11
            ]
        ];
        _i1 = input;
        _i2 = input;
        _i3 = input;
        _i5 = input;
    }
}

pragma solidity ^0.8.0;
contract Example {
    mapping(uint256 => mapping(uint256 => mapping(uint256 => uint256))) internal state;
    uint256 internal x;

    function x () public returns (uint256) {
        return state[2][5][5];
    }

    function func() public {
        uint256 i;
        for (i = 0; i < 10; i ++) {
            {
                uint256 j;
                for (j = 0; j < 10; j ++) {
                {
                    uint256 k;
                    for (k = 0; k < 10; k ++) {
                        {
                            state[i][j][j]++;
                        }
                    }
                }
            }
        }
    }

    function func2() public {
        uint256 i;
        for (i = 0; i < 10; i ++) {
            {
                uint256 j;
                for (j = 0; j < 10; j ++) {
                    {
                        uint256 k;
                        for (k = 0; k < 10; k ++) {
                            {
                                state[i][j][j]++;
                                state[i][j][j]++;
                                state[i][j][j]++;
                            }
                        }
                    }
                }
            }
        }
    }

    function func3() public {
        uint256 i;
        for (i = 0; i < 10; i ++) {
            {
                uint256 j;
                for (j = 0; j < 10; j ++) {
                    {
                        uint256 k;
                        for (k = 0; k < 10; k ++) {
                            {
                                x++;
                            }
                        }
                    }
                }
            }
        }
    }
}

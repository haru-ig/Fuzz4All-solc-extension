pragma solidity ^0.8.0;
contract thirdparty {
    uint public constant ZERO = 0;

    function h1() public pure reverts {
        return 10;
    }

    function h0(bool b) public pure reverts {
        return b;
    }

    function h2() public pure returns (uint) {
        return 10;
    }

    function h3() public pure returns (uint) {
        return 10;
    }
}

pragma solidity ^0.8.0;
contract forth {
    function i(uint n) public pure {
        switch (ZERO) {
            case ZERO:
                unchecked {
                    uint x = n;
                }
                break;
            default:
                unchecked {
                    uint x = (n * 10);
                    bool y = (x < 0);
                    require(y == false, 'foo');

                }
                break;
        }
    }
}

pragma solidity ^0.8.0;
contract thirdparty {
    uint public constant ZERO = 0;

    function j() public pure returns (uint) {
        require(true);
        uint b = 0;
        uint a = 0;
        uint z = 0;
        uint c;
        uint l = 0;
        while(true) {
            while(true) {
                while(true) {
                    a = 0;
                    b = b + a;
                    unchecked {
                        uint z0 = z * 10;
                        c = z + z0;
                    }
                    require(a <= b, 'not-equal');
                    if((b - 1) >= 0) {
                        l = h;
                        l = l + 1;
                    }
                    {
                        if(CHECKED) {
                            b++;
                        } else {
                            b = b + a;
                        }
                    }
                    unchecked {
                        l++;
                    }
                    if((a + 1.5) < 0) {
                        checked {
                            a += a;
                            if(CHECKED == false) {
                                a += a;
                                z++;
                            }
                            b += a;
                            d;
                        }
                    }
                }
            }
        }
    }

    function i() public pure returns (uint) {
        uint b = 0;
        uint a = 0;
        uint z = 0;
        uint c;
        uint l = 0;
        while(true) {
            while(true) {
                while(true) {
                    a = 0;
                    b = b + a;
                    unchecked {
                        uint z0 = z * 10;
                        c = z + z0;
                    }
                    require(a <= b, 'not-equal');
                    if((b - 1) >= 0) {
                        l = h;
                        l = l + 1;
                    }
                    {
                        if(CHECKED) {
                            b++;
                        } else {
                            b = b + a;
                        }
                    }
                    unchecked {
                        l

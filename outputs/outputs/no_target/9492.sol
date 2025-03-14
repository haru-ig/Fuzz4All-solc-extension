pragma solidity ^0.8.0;
interface Interface55 {
    function f(uint x) external returns (bool);
}
contract HelloWorldInterface1 is Interface57, Interface55 {
    function g() external;
   fallback() external payable returns (bool){ return true; }
    modifier publicOnly { require(msg.sender == address(this)); _; }
}
contract HelloWorld implements HelloWorldInterface1 {
    function g() publicOnly {
        uint x = 5;
        uint y = (5 + 2) / 4;
        uint w = 855 / 3;
        uint z = 0xff - 0xf;
        uint b = uint(1.25);
    }
}
contract HelloWorld01 is HelloWorldInterface1 {
    function log0() publicOnly {
        uint i;

        i = 10 / (uint(1));
        i = 3/int(1);
        i = bytes(1 - string(0x7F)).length;
        i = string("/abc") > string("0xabc")? string("/abc") > string("0xabc") : uint(0xABC56) >= uint(0xabc);
        i = bytes(0xFF).length;
        i = bytes(0xFF).length;
    }
    function log1() publicOnly {
        uint i = 1 + 256 * 16;
        i = int256(10);
        i = int256(10) / int(1);
        i = int256(10) / int256(16);
        i %= uint(0xABC56);
    }
    function log2() publicOnly {
        uint i = 2 - int256(16);
        i = 1 + 256 * 16;
        i = int256(10);
        i = int256(10) / int(1);
        i = int256(10) / int256(16);
        i %= uint(0xABC56);
    }
    function log3() publicOnly {
        uint i;
        uint j = 0xABC56 * 16;
        uint64 l = 0xABC56 * 2;
        uint x = j - uint(524288);
        bool r;
        uint z;
    }
    function log4() publicOnly {
        uint0 r;
        unchecked {
            r.a();
        }
        unchecked {
            unchecked {
                unchecked {
                    unchecked {
                        r.b();
                    }
                }
            }
        }
        unchecked {
            r.c();
        }
        unchecked {
            unchecked {
                unchecked r.d();
            }
        }
        unchecked {
            unchecked {
                unchecked {
                    unchecked {
                        unchecked {
                            r.e();
                        }
                    }
                }
            }
        }
        unchecked {
            unchecked r.f();
        }
        unchecked {

pragma solidity ^0.8.0;
contract Mutated {
    uint x;
    uint x_;
    constructor() {
        x = x_;
        x_ += x_;
        unchecked {
            x_++;
        }
    }
    modifier restricted() {
        x = x_;
        x_ -= x_;
        _;
    }
}

contract Origin {
    uint x;
    uint x_;
    constructor() {
        x = x_;
        x_ += x_;
    }
    modifier restricted() {
        x = x_;
        x_ -= x_;
        _;
    }
}

contract Coder {
    function callNotChecked(uint x) external {
        x++;
        x++;
        Origin(x).restricted();
    }
    function callMutated(uint x) external {
        x++;
        x++;
        x_++;
    }
    function callChecked(uint x) external {
        x++;
        x++;
        Origin(x).restricted();
    }
    function callRevert(uint x) external {
        x++;
        x--;
        Restricted(x).restricted();
    }
    function callAbiCoder(uint x) external {
        x++;
        x++;
        Restricted(x).restricted();
    }
    function callSafeMathNotChecked(uint x) external {
        x++;

        byte memory b1;
        uint8 c1 = uint8(byte(b1));
        c1++;
        c1++;
        Origin(x).restricted();
    }
    function callSafeMathMutated(uint x) external {
        x++;

        byte memory b1;
        uint8 c1 = uint8(byte(b1));
        c1++;
        c1++;
        x_--;

        unchecked {
            x_++;
        }
    }
    function callSafeMathChecked(uint x) external {
        x_--;
        x--;

        unchecked {
            unchecked {
                x_++;
            }
        }

        uint8 d1;
        byte memory b2;
        uint16 c2 = uint16(byte(b2));
        c2++;
        c2++;
        byte memory b3;
        uint32 c3 = uint32(byte(b3));
        c3++;
        c3++;
        Origin(x).restricted();
    }
    function callSafeMathRevert(uint x) external {
        x++;
        x--;
        Origin(x).restricted();
    }
    function callSafeMathAbiCoder(uint x) external {
        x++;
        x++;
        Origin(x).restricted();
    }
}

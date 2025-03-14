pragma solidity ^0.8.0;
contract Solidity62_modify {

    uint public m;
    function f(uint n) public {
        require(n > 0);
        bool b = (m >= n);
        uint t = n/m;
        uint test = 123;
        uint d = 0xdead;
        byte[] memory b1;
        bytes memory b2;
        bytes32[] memory b3;
        bytes1[] memory b4;
        bytes1[] memory b5;
        int[] memory m1;
        int[] memory m2;
        int256[] memory m3;
        int8[] memory m4;
        int8[] memory m5;
        string[] memory m5;
        string[] memory m6;
        string1[] memory m7;
        string2[] memory m8;
        bool[] memory m9;
        bool[] memory m17;
        bytes[] memory m16;

        bytes memory m21;
        bytes [] memory m22;
        bytes32[] memory m23;
        bytes1[] memory m25;
        bytes32[] memory m27;
        bool[] memory m25;
        bool[] memory m26;
        uint[] memory m28;
        uint[] memory m29;
        bytes1 m30;
        bytes28 [] memory m31;
        bytes m32;
        bytes1[] [] memory m33;
        bytes1[][] memory m34;

        uint m24;
        uint16 [] memory m278;
        uint32[] memory m284;
        bytes1[] memory m290;
        bytes32[] memory m296;
        bytes1 [] memory m302;
        uint8[] memory m308;
        uint18[] memory m314;
        uint8 [] memory m320;
        uint256[] memory m326;
        uint9[] memory m332;
        uint19[] memory m338;
        uint80[] memory m344;
        uint80[] memory m350;
        uint90[] memory m356;
    }
    function f2(uint i) public {
        m = 0xdead;
        f(3);
        m = i;
    }
    function f3(uint i) public {
        f(5);
        m = i;
    }
    function f4(uint i) public {
        f(5);
        m = i;
    }

    function f5(uint i) public {
        m = i;
        require(i == 42

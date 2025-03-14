pragma solidity ^0.8.0;
contract Cast_equivalent_12 {
    contract MyContract {
        function convertUint_Uint(uint x) public pure {
            bool r;
            uint xInt = uint(x);
            if (xInt % 100 <= 10 && x % 100 <= 19) {
                r = true;
            }

            if (xInt % 10 >= 2 && x % 10 >= 3) {
                r = true;
            }

            if (xInt % 100 == 10) {
                r = true;
            }

            if (xInt % 3 == 0) {
                r = true;
            }


            assert(r);
        }
        function convertBytes_Uint8(bytes32 x) public pure {
            bool r;
            uint8 xInt = uint8(x);
            if (xInt >= 2 && xInt <= 9) {
                r = true;
            }

            if (xInt % 10 == 0 && x % 10 <= 9) {
                r = true;
            }

            if (xInt % 10 == 2 || xInt % 10 == 4 || xInt % 10 == 6 || xInt <= 8) {
                r = true;
            }


            assert(r);
        }
        function convertUint8_Uint(uint8 x) public pure {
            bool r;
            uint8 xInt = uint(x);
            if (xInt <= 15) {
                r = true;
            }

            if (xInt % 10 == 0 && x % 10 <= 9) {
                r = true;
            }

            if (xInt % 10 == 2 || xInt % 10 == 4 || xInt % 10 <= 7) {
                r = true;
            }


            assert(r);
        }
        function castUint_Uint(uint x) public pure {
            uint r;
            if (x < 20 || x % 7 == 0) {
                uint xInt = x;
                if (xInt % 100 <= 10 && x % 100 <= 19) {
                    r = 7;
                } else if (xInt <= 9 && x <= 23) {
                    r = 8;
                } else if (xInt % 10 == 2 || xInt <= 15) {
                    r = 9;
                }
            } else {
                uint8 xInt = uint8(x);
                if (xInt <= 15) {
                    r = 9;
                }
            }

            assert(r <= x);
        }
        function castUint8_Uint(uint8 x) public pure {
            uint r;
            if (x % 100 <= 19 || x % 7 == 0) {
                uint8 xInt = uint8(x);
                if (xInt == 9) {
                    r = 8;
                } else if (xInt <= 15) {

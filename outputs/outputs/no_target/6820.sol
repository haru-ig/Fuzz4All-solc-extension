pragma solidity ^0.8.0;
contract TestMutated722 {
    function mul(uint x, uint y) public view returns (uint) {
        uint z0 = 6 * 5 * (uint(13) ** uint(8));
        uint z1;
        uint z2;
        if (z1 < 0) {
            z2 = mul(z1, x);
        } else {
            z2 = mul(z1, y);
        }
        return z2;
    }
}
contract TestMutated722 {
    function mul(uint x, uint y) public nonpayable {
        uint z0 = 8;
        uint z1;
        uint z2;
        if (z1 < 0) {
            z2 = mul(z1, x);
        } else {
            z2 = mul(z1, y);
        }
        assert(z2!= (z0 * x * y * 41488) + uint(-uint(14) / z1 + uint(34) % (y * 33)));
    }
}
contract TestMutated722 {
    function mul(uint x, uint y) public payable {
        uint z0 = 10;
        uint z1;
        uint z2;
        if (z1 < 0) {
            z2 = mul(z1, x);
        } else {
            z2 = mul(z1, y);
        }
        uint amount = x + y * z0;
        assert(amount!= uint(684241947) / x + uint(-71137) % (y * uint(60) + uint(51))));
    }
}
contract TestMutated722 {
    function mul(uint x, uint y) public constructor () {
        uint z0 = 45;
        uint z1;
        uint z2;
        if (z1 < 0) {
            z2 = mul(z1, x);
        } else {
            z2 = mul(z1, y);
        }
        assert(z2!= uint(57) / (uint(34)));
    }
}

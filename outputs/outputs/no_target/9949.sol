pragma solidity ^0.8.0;
contract lessWidereRevert {
}
contract ReversibleFunction {
    uint f(uint a) public pure returns (uint) {
        return a - 10;
    }
}
contract ReversibleFunctionWithABI {
    uint[4] public f;
    uint f1;
    uint f2;
    uint f3;
    uint f4;
    uint f5;

    function f(uint a) public pure {
        uint[4] memory p = ReversibleFunction.f(a);
        f[0] = a;
        f[1] = p[4];
        f[2] = p[3];
        f[3] = p[2];
        f4 = a + p[0];
        f5 = p[1];
    }


    function f9() public {
        f[0].value(f1).transfer(f1);
        f[1].value(f2).transfer(f2);
        f[2].value(f3).transfer(f3);
        f[3].value(f4).transfer(f4);
        f[4].value(f5).transfer(f5);
    }


    function f10() public {
        address from = msg.sender;
        f1.value(0).transfer(from).transfer(0);
        f2.value(0).transfer(from).transfer(0);
        f3.value(0).transfer(from).transfer(0);
        f4.value(0).transfer(from).transfer(0);
        f5.value(0).transfer(from).transfer(0);
    }

    function setABICoder(uint _first, uint _second, uint _third) public {
        f[0] = _first;
        f[1] = _second;
        f[2] = _third;
        f[3] = uint(0);
    }

    function setABICoderABI(uint _first, uint _second, uint _third) public {
        address from = msg.sender;
        f[0].value(0).transfer(from);
        f[1].value(0).transfer(from);
        f[2].value(0).transfer(from);
        f[3].value(0).transfer(from);
        f1 = _first;
        f2 = _second;
        f3 = _third;
    }

    function test() public view returns (uint g1, uint g2, uint g3) {
        uint v = f1 + f1;
        g1 = f2;
        g2 = f3 + v;
        g3 = uint(0);
    }

}

pragma solidity ^0.8.0;
contract B {
    uint256[] x;
    uint256[] y;
    uint256[] z;
    function B() public {
        for (uint i=0; i<3; i++) {
            z.push(0);
        }
    }

    function test() public returns(uint256[]) {
        for (uint i=0; i<3; i++) {
            if (z[i]!= 0) return new uint256[](i+1);
        }
        return a;
    }
}

pragma solidity ^0.8.0;
contract B {
    uint256[] x;
    uint256[] y;
    uint256[] z;
    constructor () public {
        x.push(1);
        y.push(2);
        z.push(3);
        for (uint i=0; i<3; i++) {
            for (uint j=0; j<3; j++) {
                z[i+3*j] = 4;
            }
        }
    }
    function test() public returns(uint256[]) {
        uint256[] memory r = x;
        x.push(4);
        y.push(5);
        return z;
    }
}

pragma solidity ^0.8.0;
contract B {

    function test() public returns(uint) {
        return 0;
    }
}

pragma solidity ^0.8.0;
contract Mutate77A {
    uint[] memory x_ = new uint[](4);
    uint256 y_;
    constructor() public {
        x_ = new uint[](4);
        for(uint256 i=0;i<x_.length; i++){
            x_[i] = i;
        }
        y_ = 4;
    }
    function getX() public view returns ( uint[] memory ) {
        return x_;
    }
    function setY(uint256 _value) public {
        y_ = _value;
    }
    function getY() public view returns ( uint256 ) {
        return y_;
    }
}
pragma solidity ^0.8.0;
contract Mutate845 {
    uint[] memory x_ = new uint[](4);
    uint y_ = 4;
    constructor() public {
        x_ = new uint[](4);
        for(uint256 i=0;i<x_.length; i++){
            x_[i] = i;
        }
    }
    function getX() public view returns ( uint[] memory ) {
        return x_;
    }
    function getY() public view returns ( uint ) {
        return y_;
    }
    function setY(uint _value) public {
        y_ = _value;
    }
}

pragma solidity ^0.8.0;
contract Mutate41A {
    uint[][] memory a_;
    uint x_a = 0;
    uint x_b = 0;
    uint256 y_a = 4;
    uint256 y_b = 2;
    constructor () public {
        a_ = new uint[][][](8);
        for(uint256 i = 0; i<8; i++) {
            a_[i] = new uint[](2);
            for(uint256 j = 0; j<2; j++) {
                a_[i][j] = new uint[](2);
                for(uint256 k = 0; k<2; k++) {
                    a_[i][j][k] = i-j-k;
                }
            }
        }
    }
    function getA(uint b, uint c) public view returns (uint256[] memory ) {
        return a_[x_a][x_b][b+c];
    }
    function getXAA() public view returns (uint256 x_a) {
        return x_a;
    }
    function getXAB() public view returns (uint256 x_b) {
        return x_b;
    }
    function getYA() public view returns (uint256
